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

ActiveRecord::Schema.define(version: 20160512124112) do

  create_table "acolytes", force: :cascade do |t|
    t.string   "firstname",  limit: 255
    t.string   "lastname",   limit: 255
    t.integer  "church_id",  limit: 4
    t.date     "since"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "acolytes", ["church_id"], name: "index_acolytes_on_church_id", using: :btree

  create_table "acolytes_constraints", id: false, force: :cascade do |t|
    t.integer "acolyte_id",    limit: 4, null: false
    t.integer "constraint_id", limit: 4, null: false
  end

  add_index "acolytes_constraints", ["acolyte_id", "constraint_id"], name: "index_acolytes_constraints_on_acolyte_id_and_constraint_id", using: :btree
  add_index "acolytes_constraints", ["constraint_id", "acolyte_id"], name: "index_acolytes_constraints_on_constraint_id_and_acolyte_id", using: :btree

  create_table "churches", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "constraints", force: :cascade do |t|
    t.integer  "ctype",      limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "interval_constraints", force: :cascade do |t|
    t.datetime "from"
    t.datetime "to"
    t.integer  "constraint_id",   limit: 4
    t.string   "constraint_type", limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "interval_constraints", ["constraint_type", "constraint_id"], name: "index_interval_constraints_on_constraint_type_and_constraint_id", using: :btree

  create_table "lineup_items", force: :cascade do |t|
    t.integer  "acolyte_id",  limit: 4
    t.integer  "position_id", limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "lineup_items", ["acolyte_id"], name: "index_lineup_items_on_acolyte_id", using: :btree
  add_index "lineup_items", ["position_id"], name: "index_lineup_items_on_position_id", using: :btree

  create_table "lineup_items_schedule_candidates", id: false, force: :cascade do |t|
    t.integer "schedule_candidate_id", limit: 4, null: false
    t.integer "lineup_item_id",        limit: 4, null: false
  end

  add_index "lineup_items_schedule_candidates", ["schedule_candidate_id", "lineup_item_id"], name: "i_sc_li", unique: true, using: :btree

  create_table "mass_constraints", force: :cascade do |t|
    t.integer  "mass_id",         limit: 4
    t.integer  "constraint_id",   limit: 4
    t.string   "constraint_type", limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "mass_constraints", ["constraint_type", "constraint_id"], name: "index_mass_constraints_on_constraint_type_and_constraint_id", using: :btree
  add_index "mass_constraints", ["mass_id"], name: "index_mass_constraints_on_mass_id", using: :btree

  create_table "masses", force: :cascade do |t|
    t.datetime "begin"
    t.datetime "end"
    t.integer  "church_id",  limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "masses", ["church_id"], name: "index_masses_on_church_id", using: :btree

  create_table "masses_requirements", id: false, force: :cascade do |t|
    t.integer "mass_id",        limit: 4, null: false
    t.integer "requirement_id", limit: 4, null: false
  end

  add_index "masses_requirements", ["mass_id", "requirement_id"], name: "index_masses_requirements_on_mass_id_and_requirement_id", using: :btree
  add_index "masses_requirements", ["requirement_id", "mass_id"], name: "index_masses_requirements_on_requirement_id_and_mass_id", using: :btree

  create_table "positions", force: :cascade do |t|
    t.string   "description", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "requirements", force: :cascade do |t|
    t.integer  "position_id", limit: 4
    t.integer  "amount",      limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "requirements", ["position_id"], name: "index_requirements_on_position_id", using: :btree

  create_table "schedule_candidates", force: :cascade do |t|
    t.integer  "mass_id",    limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "schedule_candidates", ["mass_id"], name: "index_schedule_candidates_on_mass_id", using: :btree

  create_table "schedule_candidates_schedules", id: false, force: :cascade do |t|
    t.integer "schedule_id",           limit: 4, null: false
    t.integer "schedule_candidate_id", limit: 4, null: false
  end

  create_table "schedule_headers", force: :cascade do |t|
    t.datetime "from"
    t.datetime "to"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schedules", force: :cascade do |t|
    t.integer  "schedule_header_id", limit: 4
    t.float    "fitness",            limit: 24
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "schedules", ["schedule_header_id"], name: "index_schedules_on_schedule_header_id", using: :btree

  create_table "weekday_constraints", force: :cascade do |t|
    t.integer  "day",             limit: 4
    t.string   "name",            limit: 255
    t.integer  "constraint_id",   limit: 4
    t.string   "constraint_type", limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "weekday_constraints", ["constraint_type", "constraint_id"], name: "index_weekday_constraints_on_constraint_type_and_constraint_id", using: :btree

  add_foreign_key "acolytes", "churches"
  add_foreign_key "lineup_items", "acolytes"
  add_foreign_key "lineup_items", "positions"
  add_foreign_key "mass_constraints", "masses"
  add_foreign_key "masses", "churches"
  add_foreign_key "requirements", "positions"
  add_foreign_key "schedule_candidates", "masses"
  add_foreign_key "schedules", "schedule_headers"
end
