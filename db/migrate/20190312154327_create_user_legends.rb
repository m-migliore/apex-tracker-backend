class CreateUserLegends < ActiveRecord::Migration[5.2]
  def change
    create_table :user_legends do |t|
      t.integer :user_id
      t.integer :legend_id

      t.timestamps
    end
  end
end
