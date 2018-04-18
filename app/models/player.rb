require "./config/environment.rb"
require 'pry'
class Player < ActiveRecord::Base
  has_many :player_skills
  has_many :skills, through: :player_skills

  has_many :inventories
  has_many :items, through: :inventories

  attr_accessor :name, :hp, :attack, :defence, :max_hp

end
