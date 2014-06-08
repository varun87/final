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

ActiveRecord::Schema.define(version: 20140608044943) do

  create_table "apartmenttypes", force: true do |t|
    t.string  "title"
    t.string  "poster_url"
    t.integer "rent"
    t.integer "studentdirector_id"
  end

  create_table "reviews", force: true do |t|
    t.integer  "user_id"
    t.integer  "rating"
    t.text     "content"
    t.integer  "apartmenttype_id"
    t.datetime "created_at"
  end

  create_table "studentdirectors", force: true do |t|
    t.string "name"
    t.string "photo_url"
  end

  create_table "userpreferences", force: true do |t|
    t.integer "apartmenttype_id"
    t.integer "userprofile_id"
    t.string  "preference"
  end

  create_table "userprofiles", force: true do |t|
    t.string "name"
    t.string "photo_url"
  end

  create_table "users", force: true do |t|
    t.string "username"
    t.string "password"
    t.string "name"
  end

end
