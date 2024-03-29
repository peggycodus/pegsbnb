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

ActiveRecord::Schema.define(version: 20140914143015) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "photos", force: true do |t|
    t.integer  "property_id"
    t.string   "file_name"
    t.string   "content_type"
    t.integer  "file_size"
    t.string   "caption"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "photos", ["property_id"], name: "index_photos_on_property_id", using: :btree

  create_table "properties", force: true do |t|
    t.string   "title"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "postal_code"
    t.string   "country"
    t.float    "lat"
    t.float    "long"
    t.integer  "user_id"
    t.integer  "num_beds"
    t.integer  "max_guests"
    t.decimal  "price"
    t.integer  "min_stay"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "properties", ["city"], name: "index_properties_on_city", using: :btree
  add_index "properties", ["min_stay"], name: "index_properties_on_min_stay", using: :btree
  add_index "properties", ["num_beds"], name: "index_properties_on_num_beds", using: :btree
  add_index "properties", ["postal_code"], name: "index_properties_on_postal_code", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
