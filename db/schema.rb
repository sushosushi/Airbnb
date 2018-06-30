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

ActiveRecord::Schema.define(version: 20180628121954) do

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

end
