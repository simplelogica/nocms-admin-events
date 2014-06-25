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

ActiveRecord::Schema.define(version: 20140625142852) do

  create_table "no_cms_events_event_translations", force: true do |t|
    t.integer "no_cms_events_event_id"
    t.string  "locale"
    t.string  "title"
    t.text    "description"
    t.string  "slug"
  end

  add_index "no_cms_events_event_translations", ["no_cms_events_event_id"], name: "index_no_cms_events_event_translations_on_event_id"

  create_table "no_cms_events_events", force: true do |t|
    t.datetime "starts_at"
    t.datetime "ends_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "location_id"
  end

  add_index "no_cms_events_events", ["location_id"], name: "index_no_cms_events_events_on_location_id"

  create_table "no_cms_events_location_translations", force: true do |t|
    t.integer "no_cms_events_location_id"
    t.string  "locale"
    t.string  "name"
    t.text    "description"
  end

  add_index "no_cms_events_location_translations", ["no_cms_events_location_id"], name: "index_nocms_events_location_translations_on_location_id"

  create_table "no_cms_events_locations", force: true do |t|
    t.float    "lat"
    t.float    "lng"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
