class CreateLogins < ActiveRecord::Migration[5.1]
  def change
    create_table :logins do |t|
      t.string :username
      t.string :password
      t.integer :player_id
    end
  end
end
