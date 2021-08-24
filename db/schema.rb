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

ActiveRecord::Schema.define(version: 2021_08_24_121941) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "coins", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "goals", force: :cascade do |t|
    t.string "sub"
    t.integer "goal"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "crypto_name"
    t.index ["crypto_name"], name: "index_goals_on_crypto_name", unique: true
  end

  create_table "measurements", force: :cascade do |t|
    t.integer "units"
    t.string "crypto_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "sub"
    t.string "email"
    t.string "name"
    t.string "given_name"
    t.string "family_name"
    t.string "picture"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["sub"], name: "index_users_on_sub", unique: true
  end

  add_foreign_key "goals", "users", column: "sub", primary_key: "sub"
  add_foreign_key "measurements", "goals", column: "crypto_name", primary_key: "crypto_name"
end
