class Skill < ActiveRecord::Base
  has_many :player_skills
  has_many :players, through: :player_skills
end
