class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.string :name
      t.integer :entrance_id
      t.integer :exit_id
    end
  end
end
