require_relative "character.rb"

class Enemy < ActiveRecord::Base
  belongs_to :character

  has_many :location_enemies
  has_many :locations, through: :location_enemies
end
