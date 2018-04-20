require 'faker'
require 'pry'
require 'tty-prompt'

# p1 = Player.find_or_create_by(name: Faker::GameOfThrones.unique.character, max_hp: 100, atk_amount: 5, def_amount: 5, xp: 0, level: 1)
# p2 = Player.find_or_create_by(name: Faker::GameOfThrones.unique.character, max_hp: 100, atk_amount: 5, def_amount: 5, xp: 0, level: 1)
#
# Location.find_or_create_by(name: "forest")
# Location.find_or_create_by(name: "desert")
#
# e1 = Enemy.find_or_create_by(name: Faker::GameOfThrones.unique.dragon, max_hp: 300, atk_amount: 20, def_amount: 10)
# e2 = Enemy.find_or_create_by(name: Faker::GameOfThrones.unique.dragon, max_hp: 300, atk_amount: 20, def_amount: 10)
# e3 = Enemy.find_or_create_by(name: Faker::GameOfThrones.unique.dragon, max_hp: 300, atk_amount: 20, def_amount: 10)
#
# LocationEnemy.find_or_create_by(enemy_id: 1, location_id: 1)
# LocationEnemy.find_or_create_by(enemy_id: 1, location_id: 2)
# LocationEnemy.find_or_create_by(enemy_id: 1, location_id: 3)
# LocationEnemy.find_or_create_by(enemy_id: 2, location_id: 1)
# LocationEnemy.find_or_create_by(enemy_id: 2, location_id: 3)
# LocationEnemy.find_or_create_by(enemy_id: 3, location_id: 2)
#
# Pry.start

sword = Item.find_or_create_by(name: "sword", category: "weapon", stats: "0,5,0")
chainmail = Item.find_or_create_by(name: "chainmail", category: "body", stats: "0,0,3")
ironpants = Item.find_or_create_by(name: "iron pants", category: "lower", stats: "10,0,0")
helmet = Item.find_or_create_by(name: "helmet", category: "head", stats: "5,0,2")
axe = Item.find_or_create_by(name: "axe", category: "weapon", stats: "10,5,0")



guy = Player.create(name: "guy", hp: 30, max_hp: 30, attack:7, defence:2, location: "Skystead")
shun = Player.create(name: "shun", hp: 30, max_hp: 30, attack:7, defence:2, location: "Carleone")
alice = Player.create(name: "alice", hp: 30, max_hp: 30, attack:7, defence:2, location: "Skystead")
ryan = Player.create(name: "ryan", hp: 30, max_hp: 30, attack:7, defence:2, location: "Skystead")
jaina = Player.create(name: "jaina", hp: 30, max_hp: 30, attack:7, defence:2, location: "Carleone")
tyrael = Player.create(name: "tyrael", hp: 30, max_hp: 30, attack:7, defence:2, location: "Carleone")

log1 = Login.create(username: 'alice', password: 'alice', player_id:3)
log1 = Login.create(username: 'shun', password: 'shun', player_id:2)
log1 = Login.create(username: 'guy', password: 'guy', player_id:1)

baddy3 = Enemy.create(name: "goblin", hp: 15, max_hp: 30,  attack:3, defence:0)
baddy2 = Enemy.create(name: "Ragneros The Fyrelord", hp: 3000, max_hp: 3000,  attack:3, defence:2)
baddy1 = Enemy.create(name: "rabbit", hp: 15, max_hp: 7,  attack:5, defence:1)
scorpion = Enemy.create(name: "scorpion", hp: 15, max_hp: 7,  attack:8, defence:5)
cobra = Enemy.create(name: "cobra", hp: 17, max_hp: 7,  attack:5, defence:3)
cactus = Enemy.create(name: "cactus", hp: 10, max_hp: 7,  attack:5, defence:3)
camel = Enemy.create(name: "camel", hp: 20, max_hp: 7,  attack:5, defence:3)

skystead = Town.create(name: "Skystead", entrance_name: nil, exit_name: "forest")
forest = Location.create(name: "forest", entrance_name: "Skystead", exit_name: "Carleone")
carleone = Town.create(name: "Carleone", entrance_name: "forest", exit_name: "desert")
desert = Location.create(name: "desert", entrance_name: "Carleone", exit_name: "Islesbury")
islesbury = Town.create(name: "Islesbury", entrance_name: "desert", exit_name: "mountain")
mountain = Location.create(name: "mountain", entrance_name: "Islesbury", exit_name: "Hillford")
hillford  = Town.create(name: "Hillford", entrance_name: "mountain", exit_name: "castle")
castle = Location.create(name: "castle", entrance_name: "Hillford", exit_name: "Squall's End")
squalls_end  = Town.create(name: "Squall's End ", entrance_name: "castle", exit_name: "boss")
boss = Location.create(name: "boss", entrance_name: "Squall's End", exit_name: nil)

LocationEnemy.create(enemy_id: baddy1.id, location_id: forest.id)
LocationEnemy.create(enemy_id: baddy2.id, location_id: forest.id)
LocationEnemy.create(enemy_id: baddy3.id, location_id: forest.id)
LocationEnemy.create(enemy_id: camel.id, location_id: desert.id)
LocationEnemy.create(enemy_id: scorpion.id, location_id: desert.id)
LocationEnemy.create(enemy_id: cactus.id, location_id: desert.id)
LocationEnemy.create(enemy_id: cobra.id, location_id: desert.id)


Inventory.create(player_id: 1, item_id:1)
Inventory.create(player_id: 1, item_id:2)
Inventory.create(player_id: 2, item_id:1)
Inventory.create(player_id: 2, item_id:3)
Inventory.create(player_id: 3, item_id:1)
Inventory.create(player_id: 3, item_id:4)
Inventory.create(player_id: 4, item_id:5)
