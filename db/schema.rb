# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 11) do

  create_table "enemies", force: :cascade do |t|
    t.string "name"
    t.integer "hp"
    t.integer "max_hp"
    t.integer "attack"
    t.integer "defence"
  end

  create_table "enemy_skills", force: :cascade do |t|
    t.integer "enemy_id"
    t.integer "skill_id"
  end

  create_table "inventories", force: :cascade do |t|
    t.boolean "equipped"
    t.integer "item_id"
    t.integer "player_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.string "stats"
  end

  create_table "location_enemies", force: :cascade do |t|
    t.integer "enemy_id"
    t.integer "location_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.string "entrance_name"
    t.string "exit_name"
  end

  create_table "logins", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.integer "player_id"
  end

  create_table "player_skills", force: :cascade do |t|
    t.integer "player_id"
    t.integer "skill_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.integer "hp"
    t.integer "max_hp"
    t.integer "attack"
    t.integer "defence"
    t.string "location"
    t.integer "money"
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
  end

  create_table "towns", force: :cascade do |t|
    t.string "name"
    t.string "entrance_name"
    t.string "exit_name"
  end

end
