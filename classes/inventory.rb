require "./classes/item"

class Inventory
  attr_accessor :user, :inventory, :equipment, :boosts

  def initialize(user)
    @user = user
    @inventory = []
    @equipment = []
    @boosts = {"HP" => 0, "ATK" => 0, "DEF" => 0}
  end

  def add(item)
    @inventory << item
  end

  # checks to see if equipment can be equipped
  def can_equip(item)
    slots = @equipment.map do |el|
      el.type
    end
    if !slots.include?(item.type)
      # write equip message
    else
      #write failure message
    end
  end

  def equip(item)
    @equipment << item
    equipment_calculate(item.boosts)
  end

  def equipment_calculate(boosts)
    @boosts.each do |key, val|
      @boosts[key] += boosts[key].to_i
    end
  end

end
