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
  game.year = 2022
  game.team_one_id = Team.where(:name => "Army").at(0).id
  game.team_two_id = Team.where(:name => "Missouri").at(0).id
  game.winner_id = Team.where(:name => "Army").at(0).id
  game.save

  game = Bowlgame.new
  game.championship = false
  game.game_time = DateTime.parse("23-12-2021 15:30:00")
  game.name = "Frisco Football Classic"
  game.network = "ESPN"
  game.semifinal = false
  game.year = 2022
  game.team_one_id = Team.where(:name => "North Texas").at(0).id
  game.team_two_id = Team.where(:name => "Miami (OH)").at(0).id
  game.winner_id = Team.where(:name => "Miami (OH)").at(0).id
  game.save

  game = Bowlgame.new
  game.championship = FALSE
  game.game_time = DateTime.parse("23-12-2021 19:00:00")
  game.name = "Gasparilla Bowl"
  game.network = "ESPN"
  game.semifinal = FALSE
  game.year = 2022
  game.team_one_id = Team.where(:name => "U of Central Florida").at(0).id
  game.team_two_id = Team.where(:name => "Florida").at(0).id
  game.winner_id = Team.where(:name => "U of Central Florida").at(0).id
  game.save

  game = Bowlgame.new
  game.championship = FALSE
  game.game_time = DateTime.parse("24-12-2021 20:00:00")
  game.name = "Hawaii Bowl"
  game.network = "ESPN"
  game.semifinal = FALSE
  game.year = 2022
  game.team_one_id = Team.where(:name => "Hawaii").at(0).id
  game.team_two_id = Team.where(:name => "Memphis").at(0).id
  #game.winner_id = Team.where(:name => "nil").at(0).id
  game.save

  game = Bowlgame.new
  game.championship = FALSE
  game.game_time = DateTime.parse("25-12-2021 14:30:00")
  game.name = "Camellia Bowl"
  game.network = "ESPN"
  game.semifinal = FALSE
  game.year = 2022
  game.team_one_id = Team.where(:name => "Georgia").at(0).id
  game.team_two_id = Team.where(:name => "Ball State").at(0).id
  game.winner_id = Team.where(:name => "Georgia").at(0).id
  game.save

  game = Bowlgame.new
  game.championship = FALSE
  game.game_time = DateTime.parse("27-12-2021 11:00:00")
  game.name = "Quick Lane Bowl"
  game.network = "ESPN"
  game.semifinal = FALSE
  game.year = 2022
  game.team_one_id = Team.where(:name => "Western Michigan").at(0).id
  game.team_two_id = Team.where(:name => "Nevada").at(0).id
  game.winner_id = Team.where(:name => "Western Michigan").at(0).id
  game.save

  game = Bowlgame.new
  game.championship = FALSE
  game.game_time = DateTime.parse("27-12-2021 14:30:00")
  game.name = "Military Bowl"
  game.network = "ESPN"
  game.semifinal = FALSE
  game.year = 2022
  game.team_one_id = Team.where(:name => "Boston College").at(0).id
  game.team_two_id = Team.where(:name => "East Carolina").at(0).id
  #game.winner_id = Team.where(:name => "nil").at(0).id
  game.save

  game = Bowlgame.new
  game.championship = FALSE
  game.game_time = DateTime.parse("28-12-2021 12:00:00")
  game.name = "Birmingham Bowl"
  game.network = "ESPN"
  game.semifinal = FALSE
  game.year = 2022
  game.team_one_id = Team.where(:name => "Houston").at(0).id
  game.team_two_id = Team.where(:name => "Auburn").at(0).id
  game.winner_id = Team.where(:name => "Houston").at(0).id
  game.save

  game = Bowlgame.new
  game.championship = FALSE
  game.game_time = DateTime.parse("28-12-2021 15:15:00")
  game.name = "First Responder Bowl"
  game.network = "ESPN"
  game.semifinal = FALSE
  game.year = 2022
  game.team_one_id = Team.where(:name => "Air Force").at(0).id
  game.team_two_id = Team.where(:name => "Louisville").at(0).id
  game.winner_id = Team.where(:name => "Air Force").at(0).id
  game.save

  game = Bowlgame.new
  game.championship = FALSE
  game.game_time = DateTime.parse("28-12-2021 16:45:00")
  game.name = "Liberty Bowl"
  game.network = "ESPN"
  game.semifinal = FALSE
  game.year = 2022
  game.team_one_id = Team.where(:name => "Mississippi State").at(0).id
  game.team_two_id = Team.where(:name => "Texas Tech").at(0).id
  game.winner_id = Team.where(:name => "Texas Tech").at(0).id
  game.save

  game = Bowlgame.new
  game.championship = FALSE
  game.game_time = DateTime.parse("28-12-2021 20:00:00")
  game.name = "Holiday Bowl"
  game.network = "FOX"
  game.semifinal = FALSE
  game.year = 2022
  game.team_one_id = Team.where(:name => "UCLA").at(0).id
  game.team_two_id = Team.where(:name => "North Carolina State").at(0).id
  #game.winner_id = Team.where(:name => "nil").at(0).id
  game.save

  game = Bowlgame.new
  game.championship = FALSE
  game.game_time = DateTime.parse("28-12-2021 22:15:00")
  game.name = "Guaranteed Rate Bowl"
  game.network = "ESPN"
  game.semifinal = FALSE
  game.year = 2022
  game.team_one_id = Team.where(:name => "West Virginia").at(0).id
  game.team_two_id = Team.where(:name => "Minnesota").at(0).id
  game.winner_id = Team.where(:name => "Minnesota").at(0).id
  game.save

  game = Bowlgame.new
  game.championship = FALSE
  game.game_time = DateTime.parse("29-12-2021 11:00:00")
  game.name = "Fenway Bowl"
  game.network = "ESPN"
  game.semifinal = FALSE
  game.year = 2022
  game.team_one_id = Team.where(:name => "Virginia").at(0).id
  game.team_two_id = Team.where(:name => "Southern Methodist").at(0).id
  #game.winner_id = Team.where(:name => "nil").at(0).id
  game.save

  game = Bowlgame.new
  game.championship = FALSE
  game.game_time = DateTime.parse("29-12-2021 14:15:00")
  game.name = "Pinstripe Bowl"
  game.network = "ESPN"
  game.semifinal = FALSE
  game.year = 2022
  game.team_one_id = Team.where(:name => "Maryland").at(0).id
  game.team_two_id = Team.where(:name => "Virginia Tech").at(0).id
  game.winner_id = Team.where(:name => "Maryland").at(0).id
  game.save

  game = Bowlgame.new
  game.championship = FALSE
  game.game_time = DateTime.parse("29-12-2021 17:45:00")
  game.name = "Cheez-it Bowl"
  game.network = "ESPN"
  game.semifinal = FALSE
  game.year = 2022
  game.team_one_id = Team.where(:name => "Clemson").at(0).id
  game.team_two_id = Team.where(:name => "Iowa State").at(0).id
  game.winner_id = Team.where(:name => "Clemson").at(0).id
  game.save

  game = Bowlgame.new
  game.championship = FALSE
  game.game_time = DateTime.parse("29-12-2021 21:15:00")
  game.name = "Alamo Bowl"
  game.network = "ESPN"
  game.semifinal = FALSE
  game.year = 2022
  game.team_one_id = Team.where(:name => "Oregon").at(0).id
  game.team_two_id = Team.where(:name => "Oklahoma").at(0).id
  game.winner_id = Team.where(:name => "Oklahoma").at(0).id
  game.save

  game = Bowlgame.new
  game.championship = FALSE
  game.game_time = DateTime.parse("30-12-2021 11:30:00")
  game.name = "Mayo Bowl"
  game.network = "ESPN"
  game.semifinal = FALSE
  game.year = 2022
  game.team_one_id = Team.where(:name => "North Carolina").at(0).id
  game.team_two_id = Team.where(:name => "South Carolina").at(0).id
  game.winner_id = Team.where(:name => "South Carolina").at(0).id
  game.save

  game = Bowlgame.new
  game.championship = FALSE
  game.game_time = DateTime.parse("30-12-2021 15:00:00")
  game.name = "Music City Bowl"
  game.network = "ESPN"
  game.semifinal = FALSE
  game.year = 2022
  game.team_one_id = Team.where(:name => "Tennessee").at(0).id
  game.team_two_id = Team.where(:name => "Purdue").at(0).id
  game.winner_id = Team.where(:name => "Purdue").at(0).id
  game.save

  game = Bowlgame.new
  game.championship = FALSE
  game.game_time = DateTime.parse("30-12-2021 19:00:00")
  game.name = "Peach Bowl"
  game.network = "ESPN"
  game.semifinal = FALSE
  game.year = 2022
  game.team_one_id = Team.where(:name => "Pittsburgh").at(0).id
  game.team_two_id = Team.where(:name => "Michigan State").at(0).id
  game.winner_id = Team.where(:name => "Michigan State").at(0).id
  game.save

  game = Bowlgame.new
  game.championship = FALSE
  game.game_time = DateTime.parse("30-12-2021 22:30:00")
  game.name = "Las Vegas Bowl"
  game.network = "ESPM"
  game.semifinal = FALSE
  game.year = 2022
  game.team_one_id = Team.where(:name => "Wisconsin").at(0).id
  game.team_two_id = Team.where(:name => "Arizona State").at(0).id
  game.winner_id = Team.where(:name => "Wisconsin").at(0).id
  game.save

  game = Bowlgame.new
  game.championship = FALSE
  game.game_time = DateTime.parse("31-12-2021 12:00:00")
  game.name = "Sun Bowl"
  game.network = "CBS"
  game.semifinal = FALSE
  game.year = 2022
  game.team_one_id = Team.where(:name => "Central Michigan").at(0).id
  game.team_two_id = Team.where(:name => "Washington State").at(0).id
  game.winner_id = Team.where(:name => "Central Michigan").at(0).id
  game.save

  game = Bowlgame.new
  game.championship = FALSE
  game.game_time = DateTime.parse("31-12-2021 13:00:00")
  game.name = "Arizona Bowl"
  game.network = "Barstool Sports"
  game.semifinal = FALSE
  game.year = 2022
  game.team_one_id = Team.where(:name => "Boise State").at(0).id
  game.team_two_id = Team.where(:name => "Central Michigan").at(0).id
  #game.winner_id = Team.where(:name => "nil").at(0).id
  game.save

  game = Bowlgame.new
  game.championship = FALSE
  game.game_time = DateTime.parse("31-12-2021 15:30:00")
  game.name = "CFP SEMIFINAL Cotton Bowl"
  game.network = "ESPN"
  game.semifinal = true
  game.year = 2022
  game.team_one_id = Team.where(:name => "Alabama").at(0).id
  game.team_two_id = Team.where(:name => "Cincinnati").at(0).id
  game.winner_id = Team.where(:name => "Alabama").at(0).id
  game.save

  game = Bowlgame.new
  game.championship = FALSE
  game.game_time = DateTime.parse("31-12-2021 19:30:00")
  game.name = "CFP SEMIFINAL Orange Bowl"
  game.network = "ESPN"
  game.semifinal = true
  game.year = 2022
  game.team_one_id = Team.where(:name => "Georgia").at(0).id
  game.team_two_id = Team.where(:name => "Michigan").at(0).id
  game.winner_id = Team.where(:name => "Georgia").at(0).id
  game.save

  game = Bowlgame.new
  game.championship = FALSE
  game.game_time = DateTime.parse("01-01-2022 12:00:00")
  game.name = "Outback Bowl"
  game.network = "ESPN2"
  game.semifinal = FALSE
  game.year = 2022
  game.team_one_id = Team.where(:name => "Penn State").at(0).id
  game.team_two_id = Team.where(:name => "Arkansas").at(0).id
  game.winner_id = Team.where(:name => "Arkansas").at(0).id
  game.save

  game = Bowlgame.new
  game.championship = FALSE
  game.game_time = DateTime.parse("01-01-2022 13:00:00")
  game.name = "Fiesta Bowl"
  game.network = "ESPN"
  game.semifinal = FALSE
  game.year = 2022
  game.team_one_id = Team.where(:name => "Notre Dame").at(0).id
  game.team_two_id = Team.where(:name => "Oklahoma State").at(0).id
  game.winner_id = Team.where(:name => "Oklahoma State").at(0).id
  game.save

  game = Bowlgame.new
  game.championship = FALSE
  game.game_time = DateTime.parse("01-01-2022 13:00:00")
  game.name = "Citrus Bowl"
  game.network = "ABC"
  game.semifinal = FALSE
  game.year = 2022
  game.team_one_id = Team.where(:name => "Iowa").at(0).id
  game.team_two_id = Team.where(:name => "Kentucky").at(0).id
  game.winner_id = Team.where(:name => "Kentucky").at(0).id
  game.save

  game = Bowlgame.new
  game.championship = FALSE
  game.game_time = DateTime.parse("01-01-2022 17:00:00")
  game.name = "Rose Bowl"
  game.network = "ESPN"
  game.semifinal = FALSE
  game.year = 2022
  game.team_one_id = Team.where(:name => "Utah").at(0).id
  game.team_two_id = Team.where(:name => "Ohio State").at(0).id
  game.winner_id = Team.where(:name => "Ohio State").at(0).id
  game.save

  game = Bowlgame.new
  game.championship = FALSE
  game.game_time = DateTime.parse("01-01-2022 20:45:00")
  game.name = "Sugar Bowl"
  game.network = "ESPN"
  game.semifinal = FALSE
  game.year = 2022
  game.team_one_id = Team.where(:name => "Baylor").at(0).id
  game.team_two_id = Team.where(:name => "Ole Miss").at(0).id
  game.winner_id = Team.where(:name => "Baylor").at(0).id
  game.save

  game = Bowlgame.new
  game.championship = FALSE
  game.game_time = DateTime.parse("04-01-2022 21:00:00")
  game.name = "Texas Bowl"
  game.network = "ESPN"
  game.semifinal = FALSE
  game.year = 2022
  game.team_one_id = Team.where(:name => "LSU").at(0).id
  game.team_two_id = Team.where(:name => "Kansas State").at(0).id
  game.winner_id = Team.where(:name => "Kansas State").at(0).id
  game.save

  game = Bowlgame.new
  game.championship = FALSE
  game.game_time = DateTime.parse("01-10-2022 20:00:00")
  game.name = "CFP National Championship"
  game.network = "ESPN"
  game.semifinal = FALSE
  game.year = 2022
  game.team_one_id = Team.where(:name => "Alabama").at(0).id
  game.team_two_id = Team.where(:name => "Michigan").at(0).id
  game.winner_id = Team.where(:name => "Alabama").at(0).id
  game.save
end
