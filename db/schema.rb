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

ActiveRecord::Schema.define(version: 2019_06_27_104451) do

  create_table "Books", force: :cascade do |t|
    t.string "authorname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "bookname"
    t.integer "Authors_id"
    t.index ["Authors_id"], name: "index_Books_on_Authors_id"
  end

# Could not dump table "Logins" because of following StandardError
#   Unknown type '' for column 'references'

  create_table "Tests", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "second"
    t.string "last"
    t.integer "Welcomes_id"
    t.index ["Welcomes_id"], name: "index_tests_on_Welcomes_id"
  end

  create_table "Welcomes", force: :cascade do |t|
    t.string "First_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "last_name"
    t.string "email"
    t.string "user"
    t.string "password"
  end

  create_table "authors", force: :cascade do |t|
    t.string "authorname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "registers", force: :cascade do |t|
    t.text "first_name"
    t.text "last_name"
    t.string "email"
    t.text "city"
    t.text "area"
    t.integer "mobile_no"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
