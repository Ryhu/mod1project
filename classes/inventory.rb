# require "./classes/item"
#
# class Inventory
#   attr_accessor :user, :inventory, :equipment, :boosts
#
#   def initialize(user)
#     @user = user
#     @inventory = []
#     @equipment = []
#     @boosts = {"HP" => 0, "ATK" => 0, "DEF" => 0}
#   end
#
#   def add(item)
#     @inventory << item
#   end
#
#   # checks to see if equipment can be equipped
#   def can_equip(item)
#     slots = @equipment.map do |el|
#       el.type
#     end
#     if slots.include?(item.type)
#       false
#     else
#       true
#     end
#   end
#
#   def equip(item)
#     if can_equip(item)
#       @equipment << item
#       equipment_calculate(item.boosts)
#     else
#       equip_replace(item)
#     end
#   end
#
#   def equip_replace(item)
#     #find the replaced item
#     replaced = @equipment.find do |el|
#       el.type = item.type
#     end
#     #remove the item's stats from ur boosts
#     @boosts.each do |key, val|
#       @boosts[key] -= boosts[key].to_i
#     end
#     #remove the item from equipment
#     @equipment.delete(replaced)
#     #equip the new item
#     equip(item)
#   end
#
#   def equipment_calculate(boosts)
#     @boosts.each do |key, val|
#       @boosts[key] += boosts[key].to_i
#     end
#   end
#
# end
