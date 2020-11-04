# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_11_04_154405) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "constructors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "drivers", force: :cascade do |t|
    t.string "name"
    t.bigint "constructor_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["constructor_id"], name: "index_drivers_on_constructor_id"
  end

  create_table "race_results", force: :cascade do |t|
    t.string "position"
    t.bigint "race_id", null: false
    t.bigint "driver_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "fastest_lap", default: false
    t.index ["driver_id"], name: "index_race_results_on_driver_id"
    t.index ["race_id"], name: "index_race_results_on_race_id"
  end

  create_table "races", force: :cascade do |t|
    t.string "location"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "drivers", "constructors"
  add_foreign_key "race_results", "drivers"
  add_foreign_key "race_results", "races"
end
