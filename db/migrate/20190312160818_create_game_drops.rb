class CreateGameDrops < ActiveRecord::Migration[5.2]
  def change
    create_table :game_drops do |t|
      t.integer :game_id
      t.integer :drop_id

      t.timestamps
    end
  end
end
