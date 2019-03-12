class AddLootTierToDrops < ActiveRecord::Migration[5.2]
  def change
    add_column :drops, :loot_tier, :string
  end
end
