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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111121185606) do

  create_table "announcements", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "restaurant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.integer  "parent_category_id"
    t.integer  "order"
    t.text     "description"
    t.integer  "restaurant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "deals", :force => true do |t|
    t.text     "long_description"
    t.text     "short_description"
    t.integer  "discount_price"
    t.integer  "original_price"
    t.integer  "percent_discount"
    t.datetime "start_on"
    t.datetime "end_on"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "restaurant_id"
  end

  create_table "events", :force => true do |t|
    t.string   "name",          :default => "Event Name"
    t.text     "description",   :default => "Event Description"
    t.datetime "start_on",      :default => '2011-11-23 19:45:23'
    t.datetime "end_on",        :default => '2011-11-25 19:45:23'
    t.integer  "price",         :default => 500
    t.integer  "restaurant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "galleries", :force => true do |t|
    t.integer  "restaurant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "imageable_id"
    t.string   "imageable_type"
  end

  create_table "menu_items", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "price"
    t.integer  "category_id"
    t.integer  "order"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "neighborhoods", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pictures", :force => true do |t|
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "gallery_id"
  end

  create_table "presses", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "link"
    t.integer  "restaurant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "restaurants", :force => true do |t|
    t.string   "name"
    t.string   "domain"
    t.string   "phone"
    t.string   "fax"
    t.text     "address_unformatted"
    t.text     "address_formatted"
    t.string   "street_number"
    t.string   "street_name"
    t.string   "street_suffix"
    t.string   "city"
    t.integer  "state"
    t.integer  "zip"
    t.integer  "neighborhood"
    t.text     "hours"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "states", :force => true do |t|
    t.string   "name"
    t.string   "abbrv"
    t.string   "number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "top_navs", :force => true do |t|
    t.string   "display_name"
    t.string   "nav_type"
    t.integer  "order"
    t.integer  "restaurant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_restaurants", :force => true do |t|
    t.integer  "user_id"
    t.integer  "restaurant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.boolean  "admin"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "zips", :force => true do |t|
    t.integer  "zipcode"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
