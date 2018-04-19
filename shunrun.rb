require "./config/environment.rb"
require 'pry'

#categories - head, body, lower, weapon
#stats - HP, ATK, DEF
ironpants = Item.find_or_create_by(name: "iron pants", category: "lower", stats: "30,0,15")
clothhelmet = Item.find_or_create_by(name: "cloth helmet", category: "head", stats: "20,0,20")
chainmail = Item.find_or_create_by(name: "chainmail", category: "body", stats: "50,0,50")

guy = Player.find_or_create_by(name: "guy", hp: 30, max_hp: 30, attack:7, defence:2)
#old_guy = Player.find_or_create_by(name: "old guy", hp: 20, max_hp: 20, attack:10, defence:5)

guy.items << ironpants
guy.items << clothhelmet
guy.items << chainmail

axe = Item.find_or_create_by(name: "axe", category: "weapon", stats: "30,30,30")
sword = Item.find_or_create_by(name: "sword", category: "weapon", stats: "20,20,40")

binding.pry
true
