<<<<<<< HEAD
require 'tty-prompt'
require './classes/player.rb'
require './classes/enemy.rb'
require './classes/location.rb'
require './classes/item.rb'
require './classes/inventory.rb'
require 'pry'

a = Inventory.new("bob")
itema = Item.new("axe", "weapon", "30,30,30")

binding.pry

location = Location.new()
location.here


# =>
# Choose your destiny? (Use arrow keys, press Enter to select)
# ‣ Scorpion
#   Kano
#   Jax
=======
# require 'tty-prompt'
# require './classes/player.rb'
# require './classes/enemy.rb'
# require './classes/location.rb'
#
# # location = Location.new()
# # location.here
#
#
# # =>
# # Choose your destiny? (Use arrow keys, press Enter to select)
# # ‣ Scorpion
# #   Kano
# #   Jax
>>>>>>> 04d5d01c8240153b75222f7ea99e2a1e6398db3a
