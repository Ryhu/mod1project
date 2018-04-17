require 'faker'
require 'pry'

#Player.new(name: Faker::GameOfThrones.unique.character, max_hp: 100, atk_amount: 5, def_amount: 5)

c1 = Character.create(name: Faker::GameOfThrones.unique.character, max_hp: 100, atk_amount: 5, def_amount: 5)
#c2 = Character.new(name: Faker::GameOfThrones.unique.character, max_hp: 100, atk_amount: 5, def_amount: 5)
Player.create(xp: 0, level: 1, character: c1)
#Player.new(xp: 15, level: 2, character: c2)

Pry.start
# Enemy.new(name: Faker::GameOfThrones.unique.dragon, max_hp: 300, atk_amount: 20, def_amount: 10)

# Location.new(name: Faker::GameOfThrones.city)
