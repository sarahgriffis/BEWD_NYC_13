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

ActiveRecord::Schema.define(version: 20141110013551) do

  create_table "reservations", force: true do |t|
    t.string   "fav_restaurant1"
    t.string   "fav_restaurant2"
    t.string   "fav_restaurant3"
    t.string   "cuisine"
    t.string   "prefer_drinks"
    t.time     "preferred_reservation_time"
    t.date     "preferred_date_start"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "city"
    t.integer  "user_id"
    t.date     "preferred_date_end"
    t.float    "latitude"
    t.float    "longitude"
  end

  create_table "reservations_restaurants", force: true do |t|
    t.integer "reservation_id"
    t.integer "restaurant_id"
  end

  create_table "restaurants", force: true do |t|
    t.string   "name"
    t.string   "formatted_address"
    t.string   "formatted_phone"
    t.string   "price_tier"
    t.string   "rating",            default: "0"
    t.string   "number_of_ratings"
    t.string   "photo_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "foursquare_id"
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.integer  "age"
    t.string   "industry"
    t.string   "job_title"
    t.string   "home_city"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "encrypted_password",          default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",               default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.text     "linkedin_token"
    t.text     "linkedin_picture_url"
    t.text     "linkedin_public_profile_url"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
