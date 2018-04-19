require "./config/environment.rb"
require 'pry'

#categories - head, body, lower, weapon
#stats - HP, ATK, DEF
sword = Item.create(name: "sword", category: "weapon", stats: "20,20,40")
axe = Item.create(name: "axe", category: "weapon", stats: "30,30,30")
chainmail = Item.create(name: "chainmail", category: "body", stats: "50,10,50")

guy = Player.create(name: "guy", hp: 30, max_hp: 30, attack:7, defence:2)
old_guy = Player.create(name: "old guy", hp: 20, max_hp: 20, attack:10, defence:5)



Pry.start
