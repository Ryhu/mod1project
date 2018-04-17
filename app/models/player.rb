require_relative "character.rb"

class Player < ActiveRecord::Base
  belongs_to :character
end
