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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150120012839) do

  create_table "divisions", force: true do |t|
    t.string   "division_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "league_id"
  end

  add_index "divisions", ["league_id"], name: "index_divisions_on_league_id"

  create_table "leagues", force: true do |t|
    t.string   "league_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "players", force: true do |t|
    t.string   "surname"
    t.string   "given_name"
    t.string   "position"
    t.integer  "at_bat"
    t.integer  "runs"
    t.integer  "hits"
    t.integer  "rbi"
    t.integer  "steals"
    t.integer  "walks"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "team_id"
    t.integer  "doubles"
    t.integer  "triples"
    t.integer  "home_runs"
    t.float    "avg"
    t.integer  "sb"
    t.float    "ops"
    t.integer  "sacrifice_flies"
    t.integer  "hit_by_pitch"
  end

  add_index "players", ["team_id"], name: "index_players_on_team_id"

  create_table "seasons", force: true do |t|
    t.integer  "year"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", force: true do |t|
    t.string   "city"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "division_id"
  end

  add_index "teams", ["division_id"], name: "index_teams_on_division_id"

end
