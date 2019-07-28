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

ActiveRecord::Schema.define(version: 2019_07_24_235534) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "organisations", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
    t.string "logo"
    t.bigint "user_id"
    t.string "location"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
    t.index ["user_id"], name: "index_organisations_on_user_id"
  end

  create_table "photos", force: :cascade do |t|
    t.bigint "race_id"
    t.string "picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["race_id"], name: "index_photos_on_race_id"
  end

  create_table "races", force: :cascade do |t|
    t.string "name"
    t.integer "length"
    t.integer "elevation"
    t.date "date"
    t.time "departure_time"
    t.text "description"
    t.text "goodies"
    t.string "location"
    t.float "latitude"
    t.float "longitude"
    t.bigint "organisation_id"
    t.string "race_type"
    t.boolean "single_price"
    t.string "cover_picture"
    t.integer "final_price"
    t.integer "first_price"
    t.integer "first_price_start"
    t.integer "first_price_end"
    t.integer "second_price"
    t.integer "second_price_start"
    t.integer "second_price_end"
    t.integer "third_price"
    t.integer "third_price_start"
    t.integer "third_price_end"
    t.text "rules"
    t.text "website"
    t.string "video"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["organisation_id"], name: "index_races_on_organisation_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "provider"
    t.string "avatar"
    t.string "username"
    t.string "uid"
    t.string "first_name"
    t.string "last_name"
    t.string "token"
    t.datetime "token_expiry"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "organisations", "users"
  add_foreign_key "photos", "races"
  add_foreign_key "races", "organisations"
end
