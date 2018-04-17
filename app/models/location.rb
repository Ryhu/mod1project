class Location < ActiveRecord::Base
  has_many :location_enemies
  has_many :enemies, through: :location_enemies
end
