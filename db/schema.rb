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

ActiveRecord::Schema.define(version: 20180630100741) do

  create_table "rooms", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",                                     null: false
    t.string   "image"
    t.string   "phone"
    t.text     "introduction",               limit: 65535
    t.integer  "room_type"
    t.integer  "room_category"
    t.integer  "building_type"
    t.integer  "maximum_capasity"
    t.integer  "bedroom_number"
    t.integer  "bed_number"
    t.string   "bed_type"
    t.integer  "bathroom"
    t.string   "location_country"
    t.integer  "postal_code"
    t.string   "location_prefecture"
    t.string   "location"
    t.string   "family"
    t.string   "organization"
    t.string   "pets"
    t.text     "room_introduction",          limit: 65535
    t.string   "gest_area"
    t.string   "gest_communication"
    t.text     "other",                      limit: 65535
    t.string   "area_information"
    t.string   "transportation"
    t.string   "reservation_deadline"
    t.string   "checkin_date_available"
    t.string   "checkin_time_available"
    t.string   "reservation_reception_time"
    t.string   "checkin_date"
    t.string   "checkout_date"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.integer  "money"
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "first_name",                          null: false
    t.string   "last_name",                           null: false
    t.integer  "gender"
    t.string   "birthday"
    t.string   "phone_number"
    t.string   "image"
    t.string   "display_language"
    t.string   "currency"
    t.string   "address"
    t.string   "self_introduction"
    t.string   "school_name"
    t.string   "company_name"
    t.string   "standard_time"
    t.string   "business_email"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
