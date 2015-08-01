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

ActiveRecord::Schema.define(version: 20150801015644) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "catalog_contract_types", force: :cascade do |t|
    t.string   "Type",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "catalog_devices", force: :cascade do |t|
    t.string   "Name",         null: false
    t.string   "Stock_number", null: false
    t.integer  "Supplier_id",  null: false
    t.integer  "Location_id",  null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "catalog_locations", force: :cascade do |t|
    t.string   "Laboratory_Department", null: false
    t.string   "Manager",               null: false
    t.string   "Mail",                  null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "catalog_suppliers", force: :cascade do |t|
    t.string   "Business_name",    null: false
    t.string   "Contact",          null: false
    t.string   "Phone",            null: false
    t.string   "Mail",             null: false
    t.integer  "Contract_type_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "catalogs_contracts", force: :cascade do |t|
    t.integer  "device_id"
    t.integer  "supplier_id"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "contract_no"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "catalogs_devices", force: :cascade do |t|
    t.string   "name"
    t.string   "unam_stock_number"
    t.integer  "location_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "catalogs_locations", force: :cascade do |t|
    t.string   "department"
    t.string   "responsible"
    t.string   "email"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "catalogs_siteviews", force: :cascade do |t|
    t.integer  "contract_id"
    t.date     "visit_date"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "catalogs_suppliers", force: :cascade do |t|
    t.string   "business_name"
    t.string   "contact"
    t.string   "phones"
    t.string   "email"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "catalogs_users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "user_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "login_users", force: :cascade do |t|
    t.string   "login",                  default: "", null: false
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
  end

  add_index "login_users", ["login"], name: "index_login_users_on_login", unique: true, using: :btree
  add_index "login_users", ["reset_password_token"], name: "index_login_users_on_reset_password_token", unique: true, using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "login",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["login"], name: "index_users_on_login", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
