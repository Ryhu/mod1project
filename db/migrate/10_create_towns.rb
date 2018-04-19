class CreateTowns < ActiveRecord::Migration[5.1]
  def change
    create_table :towns do |t|
      t.string :name
      t.string :entrance_name
      t.string :exit_name
    end
  end
end
