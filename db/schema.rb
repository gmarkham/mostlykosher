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

ActiveRecord::Schema.define(version: 20150922051710) do

  create_table "accounts", force: true do |t|
    t.string   "email"
    t.string   "name"
    t.string   "encrypted_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", force: true do |t|
    t.datetime "date"
    t.string   "title"
    t.text     "description"
    t.string   "link"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "published_at"
  end

  create_table "fans", force: true do |t|
    t.string   "email"
    t.string   "address"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone"
    t.string   "organization"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", force: true do |t|
    t.string   "feed"
    t.string   "title"
    t.string   "content"
    t.datetime "posted_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.boolean  "pin"
  end

  create_table "reviews", force: true do |t|
    t.string   "quote"
    t.string   "entity"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "posted_date"
  end

end
