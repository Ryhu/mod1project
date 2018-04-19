require "./config/environment.rb"
require 'pry'

class Player < ActiveRecord::Base
  has_many :player_skills
  has_many :skills, through: :player_skills

  has_many :inventories
  has_many :items, through: :inventories

  def can_equip(item) #argument is an Item instance
    slots = self.map do |el|
      el.item.category
    end
    if slots.include?(item.category)
      false
    else
      true
    end
  end

  def equip(item) #argument is an Item instance
    if can_equip(item)
      @equipment << item
      equipment_calculate(item.stats)
    else
      equip_replace(item)
    end
  end

  def equip_replace(item) #argument is an Item instance
    #find the replaced item
    replaced = @equipment.find do |el|
      el.type = item.type
    end
    #remove the item's stats from ur boosts
    @boosts.each do |key, val|
      @boosts[key] -= boosts[key].to_i
    end
    #remove the item from equipment
    @equipment.delete(replaced)
    #equip the new item
    equip(item)
  end

  def equipment_calculate(boosts)
    @boosts.each do |key, val|
      @boosts[key] += boosts[key].to_i
    end
  end
end
