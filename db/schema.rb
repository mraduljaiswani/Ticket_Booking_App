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

ActiveRecord::Schema[7.0].define(version: 2023_10_02_183648) do
  create_table "bookings", force: :cascade do |t|
    t.integer "show_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "seat_id"
    t.index ["seat_id"], name: "index_bookings_on_seat_id"
    t.index ["show_id"], name: "index_bookings_on_show_id"
  end

  create_table "movies", force: :cascade do |t|
    t.string "title"
    t.string "imdb_link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seats", force: :cascade do |t|
    t.string "seat_number"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "venue_id"
    t.integer "show_id"
    t.index ["show_id"], name: "index_seats_on_show_id"
    t.index ["venue_id"], name: "index_seats_on_venue_id"
  end

  create_table "shows", force: :cascade do |t|
    t.integer "movie_id", null: false
    t.datetime "showtime"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "start_time"
    t.integer "venue_id"
    t.index ["movie_id"], name: "index_shows_on_movie_id"
    t.index ["venue_id"], name: "index_shows_on_venue_id"
  end

  create_table "venues", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "location"
  end

  add_foreign_key "bookings", "seats"
  add_foreign_key "bookings", "shows"
  add_foreign_key "seats", "shows"
  add_foreign_key "seats", "venues"
  add_foreign_key "shows", "movies"
  add_foreign_key "shows", "venues"
end
