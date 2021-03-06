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

ActiveRecord::Schema.define(version: 20171208015050) do

  create_table "applications", force: :cascade do |t|
    t.integer "applicant_id"
    t.integer "opening_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "employer_likes"
    t.boolean "user_like"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.integer "sector_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "openings", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.integer "salary"
    t.integer "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "max_distance"
    t.integer "zip_code"
  end

  create_table "resumes", force: :cascade do |t|
    t.string "title"
    t.integer "applicant_id"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sectors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "zip_code"
    t.string "password_digest"
    t.integer "company_id"
    t.integer "pref_sector_id"
    t.integer "pref_distance"
    t.string "image"
  end

end
