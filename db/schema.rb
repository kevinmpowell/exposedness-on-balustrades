# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120627174549) do

  create_table "boards", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "card_ownerships", :force => true do |t|
    t.integer  "card_id"
    t.integer  "player_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "card_ownerships", ["card_id"], :name => "index_card_ownerships_on_card_id"
  add_index "card_ownerships", ["player_id"], :name => "index_card_ownerships_on_player_id"

  create_table "cards", :force => true do |t|
    t.integer  "board_id"
    t.integer  "territory_id"
    t.string   "name"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.boolean  "wild"
    t.string   "kind"
  end

  add_index "cards", ["board_id"], :name => "index_cards_on_board_id"
  add_index "cards", ["territory_id"], :name => "index_cards_on_territory_id"

  create_table "games", :force => true do |t|
    t.integer  "board_id"
    t.integer  "ruleset_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "games", ["board_id"], :name => "index_games_on_board_id"
  add_index "games", ["ruleset_id"], :name => "index_games_on_ruleset_id"

  create_table "neighbors", :force => true do |t|
    t.integer "territory_id"
    t.integer "neighbor_id"
  end

  add_index "neighbors", ["neighbor_id"], :name => "index_neighbors_on_neighbor_id"
  add_index "neighbors", ["territory_id"], :name => "index_neighbors_on_territory_id"

  create_table "phases", :force => true do |t|
    t.string   "name"
    t.integer  "order"
    t.integer  "ruleset_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "phases", ["ruleset_id"], :name => "index_phases_on_ruleset_id"

  create_table "players", :force => true do |t|
    t.integer  "user_id"
    t.integer  "game_id"
    t.integer  "order"
    t.string   "color"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "players", ["game_id"], :name => "index_players_on_game_id"
  add_index "players", ["user_id"], :name => "index_players_on_user_id"

  create_table "rulesets", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "territories", :force => true do |t|
    t.integer  "zone_id"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "territories", ["zone_id"], :name => "index_territories_on_zone_id"

  create_table "territory_ownerships", :force => true do |t|
    t.integer  "territory_id"
    t.integer  "player_id"
    t.integer  "army_count"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "territory_ownerships", ["player_id"], :name => "index_territory_ownerships_on_player_id"
  add_index "territory_ownerships", ["territory_id"], :name => "index_territory_ownerships_on_territory_id"

  create_table "users", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "zones", :force => true do |t|
    t.integer  "board_id"
    t.string   "name"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "reinforcements"
  end

  add_index "zones", ["board_id"], :name => "index_zones_on_board_id"

end
