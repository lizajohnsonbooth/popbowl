namespace :slurp do
  desc "TODO"
  task bowlgame: :environment do
    require "csv"
    csv_text = File.read(Rails.root.join("lib", "csvs", "popbowlsampledata.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      # name	game_time	network	team_one_id	team_two_id	winner_id	year	championship	semifinal

      #  id           :integer          not null, primary key
      #  championship :boolean
      #  game_time    :datetime
      #  name         :string
      #  network      :string
      #  semifinal    :boolean
      #  year         :integer
      #  created_at   :datetime         not null
      #  updated_at   :datetime         not null
      #  team_one_id  :integer
      #  team_two_id  :integer
      #  winner_id    :integer

      g = Bowlgame.new
      g.championship = row["championship"]
      g.gametime = row["gametime"]
      g.name = row["name"]
      g.network = row["network"]
      g.semifinal = row["semifinal"]
      g.year = row["year"]
      g.team_one_id = row["team_one_id"]
      g.team_two_id = row["team_two_id"]
      g.winner_id = row["winner_id"]
      g.save
      puts "#{g.name} saved"
    end
    puts "There are now #{Bowlgame.count} rows in the Bowl Games table"
  end
end
