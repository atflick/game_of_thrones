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

ActiveRecord::Schema.define(version: 20170224142353) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "characters", force: :cascade do |t|
    t.string  "name"
    t.string  "rank"
    t.string  "img_url"
    t.string  "bio"
    t.integer "race_id"
    t.index ["race_id"], name: "index_characters_on_race_id", using: :btree
  end

  create_table "races", force: :cascade do |t|
    t.string "species"
    t.string "alignment"
    t.string "government"
    t.string "insignia"
    t.string "description"
  end

  add_foreign_key "characters", "races"
end
