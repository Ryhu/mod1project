require 'faker'
require 'pry'
require 'tty-prompt'

p1 = Player.create(name: Faker::GameOfThrones.unique.character, max_hp: 100, atk_amount: 5, def_amount: 5, xp: 0, level: 1)
p2 = Player.create(name: Faker::GameOfThrones.unique.character, max_hp: 100, atk_amount: 5, def_amount: 5, xp: 0, level: 1)

Location.create(name: "forest")
Location.create(name: "desert")

e1 = Enemy.create(name: Faker::GameOfThrones.unique.dragon, max_hp: 300, atk_amount: 20, def_amount: 10)
e2 = Enemy.create(name: Faker::GameOfThrones.unique.dragon, max_hp: 300, atk_amount: 20, def_amount: 10)
e3 = Enemy.create(name: Faker::GameOfThrones.unique.dragon, max_hp: 300, atk_amount: 20, def_amount: 10)

LocationEnemy.create(enemy_id: 1, location_id: 1)
LocationEnemy.create(enemy_id: 1, location_id: 2)
LocationEnemy.create(enemy_id: 1, location_id: 3)
LocationEnemy.create(enemy_id: 2, location_id: 1)
LocationEnemy.create(enemy_id: 2, location_id: 3)
LocationEnemy.create(enemy_id: 3, location_id: 2)

Pry.start
