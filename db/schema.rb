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

ActiveRecord::Schema.define(version: 20180412202025) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "favorites", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "restaurant_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id", "restaurant_id"], name: "index_favorites_on_user_id_and_restaurant_id", unique: true
  end

  create_table "reservations", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "restaurant_id", null: false
    t.datetime "date", null: false
    t.datetime "time", null: false
    t.integer "num_guests", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "status"
    t.string "phone_number"
    t.integer "occasion"
    t.string "request"
    t.index ["restaurant_id"], name: "index_reservations_on_restaurant_id"
    t.index ["user_id"], name: "index_reservations_on_user_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name", null: false
    t.string "street_address", null: false
    t.string "city", null: false
    t.string "state", null: false
    t.integer "zip_code", null: false
    t.integer "num_seats", null: false
    t.integer "cuisine", null: false
    t.string "img_url"
    t.string "phone_number", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "description"
    t.integer "price"
    t.string "neighborhood"
    t.index ["city"], name: "index_restaurants_on_city"
    t.index ["cuisine"], name: "index_restaurants_on_cuisine"
    t.index ["name"], name: "index_restaurants_on_name", unique: true
    t.index ["num_seats"], name: "index_restaurants_on_num_seats"
    t.index ["state"], name: "index_restaurants_on_state"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "author_id", null: false
    t.integer "restaurant_id", null: false
    t.string "body", null: false
    t.integer "food", null: false
    t.integer "service", null: false
    t.integer "ambience", null: false
    t.integer "value", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "rating", null: false
    t.index ["author_id"], name: "index_reviews_on_author_id"
    t.index ["restaurant_id"], name: "index_reviews_on_restaurant_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username", null: false
    t.string "email", null: false
    t.string "img_url"
    t.string "password_digest", null: false
    t.string "session_token", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "fname"
    t.string "lname"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["session_token"], name: "index_users_on_session_token", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

end
