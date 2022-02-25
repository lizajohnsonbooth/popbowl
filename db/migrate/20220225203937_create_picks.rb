class CreatePicks < ActiveRecord::Migration[6.0]
  def change
    create_table :picks do |t|
      t.integer :user_id
      t.integer :bowl_game_id
      t.integer :picked_team_id

      t.timestamps
    end
  end
end
