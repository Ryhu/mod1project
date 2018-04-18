class CreateEnemySkills < ActiveRecord::Migration[5.1]
  def change
    create_table :enemy_skills do |t|
      t.integer :enemy_id
      t.integer :skill_id
    end
  end
end
