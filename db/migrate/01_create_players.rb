class CreatePlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :max_hp
      t.integer :atk_amount #attack
      t.integer :def_amount #defence
      t.integer :xp
      t.integer :level
    end
  end
end
