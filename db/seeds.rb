<<<<<<< HEAD
=======
<<<<<<< HEAD
# require 'faker'
# require 'pry'
# require 'tty-prompt'
#
=======
>>>>>>> shun
require 'faker'
require 'pry'
require 'tty-prompt'

<<<<<<< HEAD
=======
>>>>>>> b0e370ad6e5f2f6cb3d025ac8ef0393dfb419e18
>>>>>>> shun
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
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
>>>>>>> shun





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
hillford  = Town.create(name: "Hillford", entrance_name: "mountain", exit_name: "castle")
castle = Location.create(name: "castle", entrance_name: "Hillford", exit_name: "Squall's End")
squalls_end  = Town.create(name: "Squall's End ", entrance_name: "castle", exit_name: "boss")
boss = Location.create(name: "boss", entrance_name: "Squall's End", exit_name: nil)

LocationEnemy.create(enemy_id: baddy1.id, location_id: forest.id)
LocationEnemy.create(enemy_id: baddy2.id, location_id: forest.id)
LocationEnemy.create(enemy_id: baddy3.id, location_id: forest.id)
<<<<<<< HEAD
=======
>>>>>>> b0e370ad6e5f2f6cb3d025ac8ef0393dfb419e18
>>>>>>> shun
