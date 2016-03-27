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

ActiveRecord::Schema.define(version: 20160327031837) do

  create_table "catagories", force: :cascade do |t|
    t.integer  "trip_good_id"
    t.string   "name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "catagories", ["trip_good_id"], name: "index_catagories_on_trip_good_id"

  create_table "cities", force: :cascade do |t|
    t.string   "name"
    t.integer  "state_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "cities", ["state_id"], name: "index_cities_on_state_id"

  create_table "countries", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "guiders", force: :cascade do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "password_digest"
    t.string   "email"
    t.string   "user_name"
    t.string   "gender"
    t.integer  "age"
    t.binary   "photo"
    t.string   "contact_number"
    t.string   "alter_number"
    t.string   "driver_license"
    t.string   "passport_number"
    t.string   "SSN"
    t.integer  "rating"
    t.string   "comment"
    t.string   "introduction"
    t.string   "street_address"
    t.string   "city"
    t.string   "state"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "country"
    t.string   "zip_code"
    t.boolean  "qualified"
  end

  create_table "languages", force: :cascade do |t|
    t.string   "name"
    t.integer  "guider_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "languages", ["guider_id"], name: "index_languages_on_guider_id"

  create_table "ordered_trips", force: :cascade do |t|
    t.datetime "ordered_time"
    t.string   "requirement",  limit: 256
    t.integer  "trip_good_id"
    t.integer  "plan_id"
    t.integer  "traveler_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "ordered_trips", ["plan_id"], name: "index_ordered_trips_on_plan_id"
  add_index "ordered_trips", ["requirement"], name: "index_ordered_trips_on_requirement"
  add_index "ordered_trips", ["traveler_id"], name: "index_ordered_trips_on_traveler_id"
  add_index "ordered_trips", ["trip_good_id"], name: "index_ordered_trips_on_trip_good_id"

  create_table "paying_methods", force: :cascade do |t|
    t.string   "api_name",    limit: 50
    t.integer  "traveler_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "paying_methods", ["traveler_id"], name: "index_paying_methods_on_traveler_id"

  create_table "plans", force: :cascade do |t|
    t.string   "plan_name",  limit: 50
    t.integer  "budget"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "states", force: :cascade do |t|
    t.string   "name"
    t.integer  "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "states", ["country_id"], name: "index_states_on_country_id"

  create_table "travelers", force: :cascade do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "password_digest"
    t.string   "email"
    t.string   "username"
    t.string   "gender"
    t.integer  "age"
    t.binary   "photo"
    t.string   "contact_number"
    t.string   "alter_number"
    t.string   "street_address"
    t.string   "city"
    t.string   "state"
    t.string   "zip_code"
    t.string   "country"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "trip_goods", force: :cascade do |t|
    t.integer  "city_id"
    t.integer  "guider_id"
    t.date     "beginning_date"
    t.date     "end_date"
    t.integer  "price"
    t.integer  "rating"
    t.string   "review"
    t.boolean  "on_shelf"
    t.string   "introduction"
    t.string   "title"
    t.integer  "capacity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "trip_goods", ["city_id"], name: "index_trip_goods_on_city_id"
  add_index "trip_goods", ["guider_id"], name: "index_trip_goods_on_guider_id"

end
