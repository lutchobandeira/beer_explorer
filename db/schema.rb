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

ActiveRecord::Schema.define(version: 20170529160158) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "beers", force: :cascade do |t|
    t.string   "original_id"
    t.string   "name"
    t.text     "description"
    t.text     "food_pairings"
    t.decimal  "original_gravity"
    t.decimal  "abv"
    t.integer  "ibu"
    t.jsonb    "glass"
    t.string   "style_original_id"
    t.jsonb    "style_summary"
    t.boolean  "is_organic"
    t.jsonb    "labels"
    t.string   "serving_temperature"
    t.string   "serving_temperature_display"
    t.string   "status"
    t.string   "status_display"
    t.string   "available_id"
    t.jsonb    "available"
    t.string   "beer_variation_id"
    t.jsonb    "beer_variation"
    t.string   "year"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.jsonb    "breweries"
  end

  create_table "styles", force: :cascade do |t|
    t.string   "original_id"
    t.string   "category_original_id"
    t.string   "name"
    t.string   "short_name"
    t.text     "description"
    t.integer  "ibu_min"
    t.integer  "ibu_max"
    t.decimal  "abv_min"
    t.decimal  "abv_max"
    t.integer  "srm_min"
    t.integer  "srm_max"
    t.decimal  "og_min"
    t.decimal  "og_max"
    t.decimal  "fg_min"
    t.decimal  "fg_max"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

end
