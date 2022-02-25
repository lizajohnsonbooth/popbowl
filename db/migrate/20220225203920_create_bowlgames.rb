class CreateBowlgames < ActiveRecord::Migration[6.0]
  def change
    create_table :bowlgames do |t|
      t.string :name
      t.datetime :game_time
      t.string :network
      t.integer :team_one_id
      t.integer :team_two_id
      t.integer :winner_id
      t.integer :year
      t.boolean :championship
      t.boolean :semifinal

      t.timestamps
    end
  end
end
