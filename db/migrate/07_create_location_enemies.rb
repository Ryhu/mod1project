class CreateLocationEnemies < ActiveRecord::Migration[5.1]
  def change
    create_table :location_enemies do |t|
      t.integer :enemy_id
      t.integer :location_id
    end
  end
end
