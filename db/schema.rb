# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_02_21_221456) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "handicaps", force: :cascade do |t|
    t.integer "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "needs", force: :cascade do |t|
    t.integer "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "scheme_handicaps", force: :cascade do |t|
    t.bigint "scheme_id"
    t.bigint "handicap_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["handicap_id"], name: "index_scheme_handicaps_on_handicap_id"
    t.index ["scheme_id"], name: "index_scheme_handicaps_on_scheme_id"
  end

  create_table "scheme_needs", force: :cascade do |t|
    t.bigint "scheme_id", null: false
    t.bigint "need_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["need_id"], name: "index_scheme_needs_on_need_id"
    t.index ["scheme_id"], name: "index_scheme_needs_on_scheme_id"
  end

  create_table "schemes", force: :cascade do |t|
    t.string "name"
    t.string "url"
    t.string "description"
    t.integer "min_age"
    t.integer "max_age"
    t.boolean "scholarship_needed"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "visitor_handicaps", force: :cascade do |t|
    t.bigint "visitor_id"
    t.bigint "handicap_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["handicap_id"], name: "index_visitor_handicaps_on_handicap_id"
    t.index ["visitor_id"], name: "index_visitor_handicaps_on_visitor_id"
  end

  create_table "visitor_needs", force: :cascade do |t|
    t.bigint "visitor_id", null: false
    t.bigint "need_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["need_id"], name: "index_visitor_needs_on_need_id"
    t.index ["visitor_id"], name: "index_visitor_needs_on_visitor_id"
  end

  create_table "visitors", force: :cascade do |t|
    t.integer "age"
    t.boolean "scholarship"
    t.boolean "has_handicap"
    t.string "zip_code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "scheme_needs", "needs"
  add_foreign_key "scheme_needs", "schemes"
  add_foreign_key "visitor_needs", "needs"
  add_foreign_key "visitor_needs", "visitors"
end
