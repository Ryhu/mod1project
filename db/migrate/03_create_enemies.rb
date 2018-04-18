class CreateEnemies < ActiveRecord::Migration[5.1]
  def change
    create_table :enemies do |t|
      t.string :name
      t.integer :max_hp
      t.integer :atk_amount #attack
      t.integer :def_amount #defence
    end
  end
end
