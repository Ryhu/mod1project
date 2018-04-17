class CreateCharacterSkills < ActiveRecord::Migration[5.1]
  def change
    create_table :character_skills do |t|
      t.integer :character_id
      t.integer :skill_id
    end
  end
end
