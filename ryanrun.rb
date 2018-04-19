require "./config/environment.rb"
require 'pry'


# Player.delete_all

#eve = Event.new("lucky!", "you found a sword on the ground!", "pick up the sword?", "you leave the sword as is", "you pick up a sword!", "get", 5)
guy = Player.create(name: "guy", hp: 30, max_hp: 30, attack:7, defence:2)
baddy3 = Enemy.create(name: "goblin", hp: 15, max_hp: 30,  attack:3, defence:0)
baddy2 = Enemy.create(name: "bat", hp: 15, max_hp: 15,  attack:3, defence:2)
baddy1 = Enemy.create(name: "rabbit", hp: 15, max_hp: 7,  attack:5, defence:1)

skystead = Town.create(name: "Skystead", entrance_name: nil, exit_name: "forest")
forest = Location.create(name: "forest", entrance_name: "Skystead", exit_name: "Carleone")
carleone = Town.create(name: "Carleone", entrance_name: "forest", exit_name: "desert")
desert = Location.create(name: "desert", entrance_name: "Carleone", exit_name: "Islesbury")
islesbury = Town.create(name: "Islesbury", entrance_name: "desert", exit_name: "mountain")
mountain = Location.create(name: "mountain", entrance_name: "Islesbury", exit_name: "Hillford")
hillford  = Town.create(name: "Hillford ", entrance_name: "mountain", exit_name: "castle")
castle = Location.create(name: "castle", entrance_name: "Hillford", exit_name: "Squall's End")
squalls_end  = Town.create(name: "Squall's End ", entrance_name: "castle", exit_name: "boss")
boss = Location.create(name: "boss", entrance_name: "Squall's End", exit_name: nil)

LocationEnemy.create(enemy_id: baddy1.id, location_id: forest.id)
LocationEnemy.create(enemy_id: baddy2.id, location_id: forest.id)
LocationEnemy.create(enemy_id: baddy3.id, location_id: forest.id)



# town = Town.new
# town.drop(guy)


start = Startup.new()
start.start
#eve.happen(guy)6




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
