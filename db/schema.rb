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

ActiveRecord::Schema.define(version: 20160417073855) do

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.datetime "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "video"
    t.datetime "start_time"
    t.datetime "end_time"
  end

  create_table "slots", force: :cascade do |t|
    t.datetime "start_time"
    t.datetime "end_time"
    t.string   "type"
    t.string   "genre"
    t.integer  "user_id"
    t.integer  "video_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "slots", ["user_id"], name: "index_slots_on_user_id"
  add_index "slots", ["video_id"], name: "index_slots_on_video_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "videos", force: :cascade do |t|
    t.string   "title"
    t.string   "type"
    t.string   "genre"
    t.string   "url"
    t.integer  "duration_in_seconds"
    t.integer  "user_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "slot_id"
  end

  add_index "videos", ["slot_id"], name: "index_videos_on_slot_id"
  add_index "videos", ["user_id"], name: "index_videos_on_user_id"

end
