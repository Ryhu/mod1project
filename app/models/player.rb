class Player < ActiveRecord::Base
  has_many :player_skills
  has_many :skills, through: :player_skills

  has_many :inventories
  has_many :items, through: :inventories
end
