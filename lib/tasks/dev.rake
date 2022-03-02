desc "Hydrate the database with some sample data to look at so that developing is easier"
task({ :sample_data => :environment }) do
  User.destroy_all
  names = ["John",
           "Ned",
           "Liza",
           "Sam",
           "Reuben",
           "Bonnie",
           "John",
           "Bob",
           "Mary",
           "Patty",
           "Lynn",
           "Lisa",
           "Jake",
           "Ned",
           "Nelle",
           "Jared",
           "Annie",
           "Kevin",
           "Maia",
           "Sean",
           "Katie",
           "Ben",
           "Libby",
           "Tyler",
           "Joshua",
           "Will",
           "Liza",
           "Jack",
           "Kate"]

  names.count.times do |count|
    user = User.new
    user.name = names.at(count)
    user.email = "#{user.name}@example.com"
    user.password = "password"
    user.save
  end

  # bowls =["Armed Forces Bowl",
  #       "Frisco Football Classic",
  #       "Gasparilla Bowl",
  #       "Hawaii Bowl",
  #       "Camellia Bowl",
  #       "Quick Lane Bowl",
  #       "Military Bowl",
  #       "Birmingham Bowl",
  #       "First Responder Bowl",
  #       "Liberty Bowl",
  #       "Holiday Bowl",
  #       "Guaranteed Rate Bowl",
  #       "Fenway Bowl",
  #       "Pinstripe Bowl",
  #       "Cheez-it Bowl",
  #       "Alamo Bowl",
  #       "Mayo Bowl",
  #       "Music City Bowl",
  #       "Peach Bowl",
  #       "Las Vegas Bowl",
  #       "Sun Bowl",
  #       "Arizona Bowl",
  #       "CFP SEMIFINAL Cotton Bowl",
  #       "CFP SEMIFINAL Orange Bowl",
  #       "Outback Bowl",
  #       "Fiesta Bowl",
  #       "Citrus Bowl",
  #       "Rose Bowl",
  #       "Sugar Bowl",
  #       "Texas Bowl",
  #       "CFP National Championship"]

  Bowlgame.destroy_all
  game = Bowlgame.new
  game.championship = false
  game.game_time = DateTime.parse("22-12-2021 20:00:00")
  game.name = "Armed Forces Bowl"
  game.network = "ESPN"
  game.semifinal = false
  game.year = 2021
  game.team_one_id = Team.where(:name => "Army").at(0).id
  game.team_two_id = Team.where(:name => "Missouri").at(0).id
  game.winner_id = game.team_one_id
  game.save

  game = Bowlgame.new
  game.championship = false
  game.game_time = DateTime.parse("23-12-2021 15:30:00")
  game.name = "Frisco Football Classic"
  game.network = "FOX"
  game.semifinal = false
  game.year = 2021
  game.team_one_id = Team.where(:name => "North Texas").at(0).id
  game.team_two_id = Team.where(:name => "Miami (OH)").at(0).id
  game.winner_id = game.team_two_id
  game.save

  # game = Bowlgame.new
  # game.championship = false
  # game.game_time =  DateTime.parse("12/23/2021 15:30:00")
  # game.name = "Gasparilla Bowl"
  # game.network = "ESPN"
  # game.semifinal = false
  # game.year = 2021
  # game.team_one_id = Team.where(:name=>"UCF").at(0).id
  # game.team_two_id = Team.where(:name=>"Florida").at(0).id
  # game.winner_id = game.team_two_id
  # game.save

end

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
