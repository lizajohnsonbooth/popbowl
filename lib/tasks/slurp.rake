namespace :slurp do
  desc "TODO"
  task teams: :environment do
    require "csv"

    csv_text = File.read(Rails.root.join("lib", "csvs", "teams.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    Team.destroy_all

    csv.each do |row|
      t = Team.new
      t.name = row["name"]
      t.abbreviation = row["abbreviation"]
      t.mascot = row["mascot"]
      t.espn_team_page = row["espn_team_page"]
      t.logo = row["logo"]
      t.save
  #  team_hash = row.to_hash
  #  p team_hash.fetch("mascot")
  p t.name
   end
  end
end
