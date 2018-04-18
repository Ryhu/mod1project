<<<<<<< HEAD
require 'tty-prompt'
require './classes/player.rb'
require './classes/enemy.rb'
require './classes/location.rb'
require './classes/item.rb'
require './classes/inventory.rb'
require 'pry'

a = Inventory.new("bob")
itema = Item.new("axe", "weapon", "0,5,0")
itemb = Item.new("hat", "head", "0,0,5")
itemc = Item.new("plate", "body", "0,0,10")
itemd = Item.new("sabatons", "lower", "10,0,0")
iteme = Item.new("sword", "weapon", "0,20,0")
a.add(itema)
a.add(itemb)
a.add(itemc)
a.add(itemd)
a.add(iteme)

binding.pry

location = Location.new()
location.here
=======
# require 'tty-prompt'
# require './classes/player.rb'
# require './classes/enemy.rb'
# require './classes/location.rb'
# require './classes/item.rb'
# require './classes/inventory.rb'
# require 'pry'
#
# a = Inventory.new("bob")
# itema = Item.new("axe", "weapon", "0,5,0")
# itemb = Item.new("hat", "head", "0,0,5")
# itemc = Item.new("plate", "body", "0,0,10")
# itemd = Item.new("sabatons", "lower", "10,0,0")
# iteme = Item.new("sword", "weapon", "0,20,0")
# a.add(itema)
# a.add(itemb)
# a.add(itemc)
# a.add(itemd)
# a.add(iteme)
#
# binding.pry
#
# location = Location.new()
# location.here
>>>>>>> 04d5d01c8240153b75222f7ea99e2a1e6398db3a


# =>
# Choose your destiny? (Use arrow keys, press Enter to select)
# ‣ Scorpion
#   Kano
#   Jax
