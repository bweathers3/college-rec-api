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

ActiveRecord::Schema.define(version: 20180211195318) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "academics", force: :cascade do |t|
    t.text "schoolName"
    t.text "counselorName"
    t.text "counselorEmail"
    t.string "counselorPhone"
    t.string "gpa"
    t.string "classRank"
    t.string "sat"
    t.string "act"
    t.bigint "student_athlete_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_athlete_id"], name: "index_academics_on_student_athlete_id"
  end

  create_table "athletics", force: :cascade do |t|
    t.string "stat1"
    t.string "stat2"
    t.string "stat3"
    t.string "stat4"
    t.string "stat5"
    t.string "stat6"
    t.string "stat7"
    t.string "stat8"
    t.string "stat9"
    t.string "stat10"
    t.string "stat11"
    t.string "stat12"
    t.bigint "student_athlete_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_athlete_id"], name: "index_athletics_on_student_athlete_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.bigint "student_athlete_id"
    t.text "street"
    t.text "city"
    t.string "state"
    t.string "zip"
    t.string "email"
    t.string "phone"
    t.text "siblings"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "country"
    t.index ["student_athlete_id"], name: "index_profiles_on_student_athlete_id"
  end

  create_table "student_athletes", force: :cascade do |t|
    t.text "firstName"
    t.text "middleName"
    t.text "lastName"
    t.date "birthdate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "gender"
    t.string "intended_enrollment_year"
    t.bigint "user_id"
    t.index ["user_id"], name: "index_student_athletes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.text "accountToken"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "academics", "student_athletes"
  add_foreign_key "athletics", "student_athletes"
  add_foreign_key "profiles", "student_athletes"
  add_foreign_key "student_athletes", "users"
end
