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

ActiveRecord::Schema.define(version: 2020_05_15_201231) do

  create_table "apartment_tags", force: :cascade do |t|
    t.integer "apartment_id"
    t.integer "tag_id"
  end

  create_table "apartments", force: :cascade do |t|
    t.string "adress"
    t.integer "price"
    t.integer "user_id"
    t.integer "bedroom_id"
  end

  create_table "bedrooms", force: :cascade do |t|
    t.boolean "one"
    t.boolean "two"
    t.boolean "three"
    t.boolean "four"
    t.boolean "five"
    t.boolean "six"
  end

  create_table "comments", force: :cascade do |t|
    t.string "body"
    t.integer "apartment_id"
    t.integer "user_id"
  end

  create_table "inbox_messages", force: :cascade do |t|
    t.string "body"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "send_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "body"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
    t.string "inbox"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
