class CreateEnemies < ActiveRecord::Migration[5.1]
  def change
    create_table :enemies do |t|
      t.string :name
      t.integer :hp
      t.integer :max_hp
      t.integer :attack
      t.integer :defence
    end
  end
end
