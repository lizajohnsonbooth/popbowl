# == Schema Information
#
# Table name: teams
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Team < ApplicationRecord
  has_many(:home_bowl_games, { :class_name => "Bowlgame", :foreign_key => "team_one_id", :dependent => :destroy })
  has_many(:away_bowl_games, { :class_name => "Bowlgame", :foreign_key => "team_two_id", :dependent => :destroy })
  has_many(:won_games, { :class_name => "Bowlgame", :foreign_key => "winner_id", :dependent => :destroy })
  has_many(:picks, { :class_name => "Pick", :foreign_key => "picked_team_id", :dependent => :destroy })
end
