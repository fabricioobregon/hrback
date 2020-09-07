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

ActiveRecord::Schema.define(version: 2020_09_07_094219) do

  create_table "cards", force: :cascade do |t|
    t.string "name"
    t.boolean "golden"
    t.string "cardType"
    t.string "race"
    t.string "classone"
    t.string "classtwo"
    t.string "rarity"
    t.string "attack"
    t.string "cost"
    t.string "health"
    t.string "set"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "decks", force: :cascade do |t|
    t.string "name"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_decks_on_user_id"
  end

  create_table "decks_cards", id: false, force: :cascade do |t|
    t.integer "deck_id", null: false
    t.integer "card_id", null: false
    t.index ["card_id", "deck_id"], name: "index_decks_cards_on_card_id_and_deck_id"
    t.index ["deck_id", "card_id"], name: "index_decks_cards_on_deck_id_and_card_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users_cards", id: false, force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "card_id", null: false
    t.index ["card_id", "user_id"], name: "index_users_cards_on_card_id_and_user_id"
    t.index ["user_id", "card_id"], name: "index_users_cards_on_user_id_and_card_id"
  end

  add_foreign_key "decks", "users"
end
