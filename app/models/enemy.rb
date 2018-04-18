require_relative "character.rb"

class Enemy < ActiveRecord::Base
  has_many :location_enemies
  has_many :locations, through: :location_enemies

  has_many :enemy_skills
  has_many :skills, through: :enemy_skills
end
