class CreatePlayerSkills < ActiveRecord::Migration[5.1]
  def change
    create_table :player_skills do |t|
      t.integer :player_id
      t.integer :skill_id
    end
  end
end
