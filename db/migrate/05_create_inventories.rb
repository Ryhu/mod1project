class CreateInventories < ActiveRecord::Migration[5.1]
  def change
    create_table :inventories do |t|
      t.integer :item_id
      t.integer :player_id
    end
  end
end
