# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_04_26_144953) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bins", force: :cascade do |t|
    t.string "location"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "bins_bottles", id: false, force: :cascade do |t|
    t.bigint "bottle_id", null: false
    t.bigint "bin_id", null: false
    t.index ["bin_id"], name: "index_bins_bottles_on_bin_id"
    t.index ["bottle_id"], name: "index_bins_bottles_on_bottle_id"
  end

  create_table "bottles", force: :cascade do |t|
    t.bigint "country_id"
    t.bigint "producer_id"
    t.string "name"
    t.string "appellation"
    t.string "color"
    t.boolean "sparkling"
    t.decimal "price", precision: 10, scale: 2
    t.integer "vintage"
    t.text "notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["country_id"], name: "index_bottles_on_country_id"
    t.index ["producer_id"], name: "index_bottles_on_producer_id"
  end

  create_table "bottles_varietals", id: false, force: :cascade do |t|
    t.bigint "bottle_id", null: false
    t.bigint "varietal_id", null: false
    t.index ["bottle_id"], name: "index_bottles_varietals_on_bottle_id"
    t.index ["varietal_id"], name: "index_bottles_varietals_on_varietal_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "orders", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "bottle_id", null: false
    t.integer "quantity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bottle_id"], name: "index_orders_on_bottle_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "producers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "varietals", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "orders", "bottles"
  add_foreign_key "orders", "users"
end
