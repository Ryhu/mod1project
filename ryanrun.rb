require 'tty-prompt'
require './classes/player.rb'
require './classes/enemy.rb'
require './classes/location.rb'
require './classes/startup.rb'

# location = Location.new()
# location.here

a = Startup.new
a.start

# =>
# Choose your destiny? (Use arrow keys, press Enter to select)
# ‣ Scorpion
#   Kano
#   Jax
