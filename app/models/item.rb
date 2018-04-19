class Item < ActiveRecord::Base
  has_many :inventories
  has_many :players, through: :inventories

  # attr_accessor :name, :type, :boosts
  # def initialize(name, type, boosts)
  #   @name = name
  #   @type = type
  #   #types - equipment - head, body, lower, weapon
  #   @boosts = boosts_translator(boosts)
  # end

  # def stats_translator(stats)
  #   hash = {}
  #   a = stats.split(",")
  #   hash['HP'] = a[0]
  #   hash['ATK'] = a[1]
  #   hash['DEF'] = a[2]
  #   hash
  # end
  #boost decode - HP, ATK, DEF
  # boost code = "30,30,30"

  def stats_translator
    hash = {}
    a = self.stats.split(",")
    hash['HP'] = a[0]
    hash['ATK'] = a[1]
    hash['DEF'] = a[2]
    hash
  end
end

# a = Item.new("axe", "weapon", "30,30,30")
