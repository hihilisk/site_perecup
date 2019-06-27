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

ActiveRecord::Schema.define(version: 2019_06_17_071609) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "adverts", force: :cascade do |t|
    t.bigint "category_id"
    t.integer "year"
    t.string "seller"
    t.string "phone"
    t.string "url"
    t.integer "price"
    t.string "vin"
    t.string "city"
    t.text "notes"
    t.string "complectation"
    t.string "owners"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_adverts_on_category_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "brand"
    t.string "model"
  end

  create_table "check_lists", force: :cascade do |t|
    t.bigint "advert_id"
    t.string "spending"
    t.string "condicion"
    t.string "service"
    t.string "painted"
    t.string "body_repair"
    t.integer "price"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["advert_id"], name: "index_check_lists_on_advert_id"
  end

  add_foreign_key "adverts", "categories"
  add_foreign_key "check_lists", "adverts"
end
