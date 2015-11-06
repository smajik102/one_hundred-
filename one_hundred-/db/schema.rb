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

ActiveRecord::Schema.define(version: 20151105213749) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "movements", force: :cascade do |t|
    t.string   "movement"
    t.integer  "reps"
    t.integer  "points"
    t.text     "notes"
    t.integer  "workout_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "movements", ["workout_id"], name: "index_movements_on_workout_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "user_name"
    t.string   "password_digest"
    t.integer  "workout_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "workouts", force: :cascade do |t|
    t.datetime "date"
    t.text     "workout"
    t.text     "notes"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "workouts", ["user_id"], name: "index_workouts_on_user_id", using: :btree

  add_foreign_key "movements", "workouts"
  add_foreign_key "workouts", "users"
end
