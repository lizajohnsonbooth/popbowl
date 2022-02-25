# == Schema Information
#
# Table name: picks
#
#  id             :integer          not null, primary key
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  bowl_game_id   :integer
#  picked_team_id :integer
#  user_id        :integer
#
class Pick < ApplicationRecord
  belongs_to(:user, { :required => true, :class_name => "User", :foreign_key => "user_id" })
  belongs_to(:bowl_game, { :required => true, :class_name => "Bowlgame", :foreign_key => "bowl_game_id" })
  belongs_to(:picked_team, { :required => true, :class_name => "Team", :foreign_key => "picked_team_id" })
end
