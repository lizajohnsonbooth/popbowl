# == Schema Information
#
# Table name: bowlgames
#
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
#
class Bowlgame < ApplicationRecord
  has_many(:picks, { :class_name => "Pick", :foreign_key => "bowl_game_id", :dependent => :destroy })
  belongs_to(:home_team, { :required => true, :class_name => "Team", :foreign_key => "team_one_id" })
  belongs_to(:away_team, { :required => true, :class_name => "Team", :foreign_key => "team_two_id" })
  belongs_to(:winner, { :required => true, :class_name => "Team", :foreign_key => "winner_id" })
end
