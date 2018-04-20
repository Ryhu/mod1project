require "./config/environment.rb"
require 'pry'

class Player < ActiveRecord::Base
  has_many :player_skills
  has_many :skills, through: :player_skills

  has_many :inventories
  has_many :items, through: :inventories

  def equipment
    if defined?(@equipment)
      @equipment
    else
      @equipment = []
    end
  end

  def save_equip #equip items
    @equipment.each do |el|
      a = Inventory.find_by(player_id: self.id, item_id: el.id)
      a.equipped = true
      a.save
    end
  end

  def can_equip(item) #argument is an Item instance
    slots = equipment.map do |el|
      el.category
    end
    if slots.include?(item.category)
      false
    else
      true
    end
  end

  def equip(item) #argument is an Item instance
    if can_equip(item)
      equipment << item
      equipment_calculate(item)
    else
      equip_replace(item)
    end
  end

  def equip_replace(item) #argument is an Item instance
    #find the replaced item
    replaced = equipment.find do |el|
      el.category == item.category
    end
    stats = replaced.stats_translator
    #remove the item's stats from ur stats
    self.max_hp -= stats['HP'].to_i
    self.attack -= stats['ATK'].to_i
    self.defence -= stats['DEF'].to_i
    #remove the item from equipment
    self.equipment.delete(replaced)

    #equip the new item
    equip(item)
  end

  def equipment_calculate(item)
    stats = item.stats_translator
    self.max_hp += stats['HP'].to_i
    self.attack += stats['ATK'].to_i
    self.defence += stats['DEF'].to_i
  end
end
