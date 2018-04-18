class Item
  attr_accessor :name, :type, :boosts
  def initialize(name, type, boosts)
    @name = name
    @type = type
    @boosts = boosts_translator(boosts)
  end

  def boosts_translator(boosts)
    hash = {}
    a = boosts.split(",")
    hash['HP'] = a[0]
    hash['ATK'] = a[1]
    hash['DEF'] = a[2]
    hash
  end
  #boost decode - HP, ATK, DEF
  # boost code = "30,30,30"
end

# a = Item.new("axe", "weapon", "30,30,30")
