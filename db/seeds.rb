# require 'faker'
# require 'pry'
# require 'tty-prompt'
#
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
