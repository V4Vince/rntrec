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

ActiveRecord::Schema.define(version: 20160621194259) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contracts", force: :cascade do |t|
    t.date     "start"
    t.date     "end"
    t.integer  "num_tenants"
    t.integer  "rent"
    t.integer  "security"
    t.integer  "unit_id",     null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "contracts", ["unit_id"], name: "index_contracts_on_unit_id", using: :btree

  create_table "examples", force: :cascade do |t|
    t.text     "text",       null: false
    t.integer  "user_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "examples", ["user_id"], name: "index_examples_on_user_id", using: :btree

  create_table "houses", force: :cascade do |t|
    t.text     "street_name"
    t.integer  "num_units"
    t.integer  "purchase_price"
    t.integer  "current_price"
    t.integer  "user_id",        null: false
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "houses", ["user_id"], name: "index_houses_on_user_id", using: :btree

  create_table "units", force: :cascade do |t|
    t.text     "unit_num"
    t.integer  "num_bedrooms"
    t.integer  "num_bathrooms"
    t.integer  "num_parking"
    t.integer  "expense"
    t.integer  "house_id",      null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "units", ["house_id"], name: "index_units_on_house_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",           null: false
    t.string   "token",           null: false
    t.string   "password_digest", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["token"], name: "index_users_on_token", unique: true, using: :btree

  add_foreign_key "contracts", "units"
  add_foreign_key "examples", "users"
  add_foreign_key "houses", "users"
  add_foreign_key "units", "houses"
end
