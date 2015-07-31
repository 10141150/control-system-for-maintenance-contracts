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

ActiveRecord::Schema.define(version: 20150731174835) do

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

  create_table "catalogs_equipment", force: :cascade do |t|
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

end
