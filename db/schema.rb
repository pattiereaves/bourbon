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

ActiveRecord::Schema.define(version: 20131109181642) do

  create_table "attribute_types", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  create_table "bourbon_attributes", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "attribute_type_id"
  end

  create_table "bourbon_profiles", force: true do |t|
    t.integer  "bourbon_whiskey_id"
    t.integer  "bourbon_attribute_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bourbon_whiskeys", force: true do |t|
    t.string   "name"
    t.integer  "distillery_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "age"
    t.integer  "proof"
    t.text     "appearance"
    t.text     "aroma_description"
    t.text     "taste_description"
    t.text     "finish_description"
  end

  create_table "distilleries", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hates", force: true do |t|
    t.integer  "user_id"
    t.integer  "attribute_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "likes", force: true do |t|
    t.integer  "user_id"
    t.integer  "attribute_id"
    t.boolean  "is_loved"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_flavors", force: true do |t|
    t.integer  "user_id"
    t.integer  "flavor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
