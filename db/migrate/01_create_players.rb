class CreatePlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :hp
      t.integer :max_hp
      t.integer :attack
      t.integer :defence
      t.string :location
      t.integer :money
    end
  end
end
