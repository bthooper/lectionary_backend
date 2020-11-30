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

ActiveRecord::Schema.define(version: 2020_11_30_184005) do

  create_table "days", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "startDate"
    t.string "endDate"
    t.integer "season_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["season_id"], name: "index_days_on_season_id"
  end

  create_table "lectionaries", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "owner"
    t.string "license"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "readings", force: :cascade do |t|
    t.string "reference"
    t.string "link"
    t.string "reading_type"
    t.string "bookName"
    t.string "startChapter"
    t.string "endChapter"
    t.string "startVerse"
    t.string "endVerse"
    t.integer "day_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["day_id"], name: "index_readings_on_day_id"
  end

  create_table "schedules", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "lectionary_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["lectionary_id"], name: "index_schedules_on_lectionary_id"
  end

  create_table "seasons", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "schedule_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["schedule_id"], name: "index_seasons_on_schedule_id"
  end

  add_foreign_key "days", "seasons"
  add_foreign_key "readings", "days"
  add_foreign_key "schedules", "lectionaries"
  add_foreign_key "seasons", "schedules"
end
