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

ActiveRecord::Schema.define(version: 20160523040122) do

  create_table "inventories", force: :cascade do |t|
    t.string   "tc_part"
    t.string   "short_desc"
    t.text     "description"
    t.string   "manufacture"
    t.string   "tc_type"
    t.string   "product_part"
    t.string   "tc_cat"
    t.string   "tc_wh"
    t.string   "tc_isle"
    t.string   "tc_shelf"
    t.integer  "quantity_hand"
    t.integer  "min_quantity"
    t.integer  "quantity_used"
    t.string   "last_order_quantity"
    t.date     "last_order"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.integer  "job_id"
    t.string   "location"
    t.text     "description"
    t.date     "due_by"
    t.date     "created"
    t.string   "priority"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "materials", force: :cascade do |t|
    t.integer  "material_job"
    t.string   "part_number"
    t.text     "part_description"
    t.integer  "quantity_used"
    t.boolean  "closet"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

end
