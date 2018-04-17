class Character < ActiveRecord::Base
  has_many :inventories
  has_many :items, through: :inventories

  has_many :character_skills
  has_many :skills, through: :character_skills

  has_one :player
  has_one :enemy
  # def attack
  #   self.hp -= self.atk_amount
  #   "The attack "
  # end
  #
  # def hp
  #   "#{self.name}'s hp is #{self.hp}'"
  # end
end
