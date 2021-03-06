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

ActiveRecord::Schema.define(version: 20150626000948) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "games", force: :cascade do |t|
    t.string   "state"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.integer  "word_id"
    t.integer  "players_left"
    t.datetime "phase_start_time"
    t.integer  "highest_score",    default: 0
  end

  create_table "hints", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "word_id"
  end

  create_table "players", force: :cascade do |t|
    t.integer  "game_id"
    t.integer  "user_id"
    t.integer  "score",         default: 0
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "guess"
    t.string   "state",         default: "not ready"
    t.boolean  "has_drawn",     default: false
    t.integer  "time_of_guess", default: 0
    t.datetime "guess_time"
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.text     "password_digest"
    t.text     "email"
    t.boolean  "admin",           default: false
    t.text     "bio"
    t.text     "profile_image",   default: "https://tracker.moodle.org/secure/attachment/30912/f3.png"
    t.integer  "total_wins",      default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "total_games",     default: 0
    t.string   "remember_digest"
  end

  create_table "words", force: :cascade do |t|
    t.text     "name"
    t.text     "related_image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
