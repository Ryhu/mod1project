require 'tty-prompt'
require './classes/player.rb'
require './app/models/event.rb'

require 'pry'

eve = Event.new("lucky!", "you found a sword on the ground!", "pick up the sword?", "you leave the sword as is", "you pick up a sword!", "get", 5)
guy = Player.new(guy, 30,7,2)

eve.happen(guy)




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




# =>
# Choose your destiny? (Use arrow keys, press Enter to select)
# ‣ Scorpion
#   Kano
#   Jax
