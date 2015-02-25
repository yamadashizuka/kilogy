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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20150225080451) do

  create_table "checkresults", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "checks", force: true do |t|
    t.integer  "weather_id"
    t.integer  "exterior"
    t.integer  "tone"
    t.integer  "stain"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "checks", ["weather_id"], name: "index_checks_on_weather_id"
=======
ActiveRecord::Schema.define(version: 20150225063111) do
>>>>>>> e8acaf5fa1eff1efe07b16cadc1979bd9f2b41d5

  create_table "divisions", force: true do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "equipment", force: true do |t|
    t.string   "name"
    t.integer  "type_id"
    t.integer  "place_id"
    t.integer  "division_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "equipment", ["division_id"], name: "index_equipment_on_division_id"
  add_index "equipment", ["place_id"], name: "index_equipment_on_place_id"
  add_index "equipment", ["type_id"], name: "index_equipment_on_type_id"

  create_table "inspections", force: true do |t|
    t.string   "targetyearmonth"
    t.integer  "equipment_id"
    t.integer  "status_id"
    t.integer  "worker_id"
    t.integer  "result_id"
    t.date     "processingdate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "inspections", ["equipment_id"], name: "index_inspections_on_equipment_id"
  add_index "inspections", ["result_id"], name: "index_inspections_on_result_id"
  add_index "inspections", ["status_id"], name: "index_inspections_on_status_id"
  add_index "inspections", ["worker_id"], name: "index_inspections_on_worker_id"

  create_table "places", force: true do |t|
    t.string   "name"
    t.text     "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "results", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "statuses", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "weathers", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "workers", force: true do |t|
    t.string   "name"
    t.integer  "division_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "workers", ["division_id"], name: "index_workers_on_division_id"

end
