require 'pry'
class CreatePlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :players do |t|
      t.integer :xp
      t.integer :level
      t.integer :character_id
    end
  end
end
