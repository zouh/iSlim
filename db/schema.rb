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

ActiveRecord::Schema.define(version: 20131120145831) do

  create_table "nutrition_facts", force: true do |t|
    t.string   "bar_code"
    t.string   "code"
    t.string   "name"
    t.text     "description"
    t.string   "size_unit"
    t.decimal  "size"
    t.decimal  "serving_size"
    t.decimal  "servings"
    t.decimal  "energy"
    t.string   "energy_unit"
    t.integer  "energy_percent"
    t.decimal  "protein"
    t.integer  "protein_percent"
    t.decimal  "fat"
    t.integer  "fat_percent"
    t.decimal  "carbohydrate"
    t.integer  "carbohydrate_percent"
    t.decimal  "sodium"
    t.integer  "sodium_percent"
    t.string   "created_by"
    t.string   "updated_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
