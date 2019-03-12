class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.integer :time_survived
      t.integer :kills
      t.integer :damage
      t.integer :revives
      t.integer :respawns
      t.integer :deaths
      t.integer :finish
      t.integer :user_id
      t.integer :legend_id
      t.integer :drop_id

      t.timestamps
    end
  end
end
