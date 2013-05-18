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

ActiveRecord::Schema.define(:version => 20130518093213) do

  create_table "ad_posts", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.float    "price"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "link"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "categories", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "consumer_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "categories", ["consumer_id", "created_at"], :name => "index_categories_on_consumer_id_and_created_at"

  create_table "consumers", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "sadmin",                 :default => false
    t.boolean  "user_type",              :default => false
    t.integer  "phone_no"
    t.string   "address"
    t.string   "password_reset_token"
    t.datetime "password_reset_sent_at"
  end

  add_index "consumers", ["email"], :name => "index_consumers_on_email", :unique => true
  add_index "consumers", ["remember_token"], :name => "index_consumers_on_remember_token"

  create_table "items", :force => true do |t|
    t.integer  "category_id"
    t.string   "name"
    t.string   "location"
    t.string   "email"
    t.integer  "phone_no"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.float    "price"
    t.string   "description"
  end

  create_table "order_items", :force => true do |t|
    t.integer  "order_id"
    t.string   "item_id"
    t.integer  "quantity"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "orders", :force => true do |t|
    t.integer  "consumer_id"
    t.string   "store_id"
    t.float    "total_price"
    t.integer  "zip_code"
    t.string   "shipping_address"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.string   "phone_no"
  end

  create_table "products", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.integer  "category_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.string   "pic_file_name"
    t.string   "pic_content_type"
    t.integer  "pic_file_size"
    t.datetime "pic_updated_at"
    t.float    "price"
    t.integer  "mrp"
    t.integer  "quantity"
    t.string   "units"
    t.integer  "sub_category_id"
    t.integer  "store_id"
  end

  add_index "products", ["category_id", "created_at"], :name => "index_products_on_category_id_and_created_at"

  create_table "profiles", :force => true do |t|
    t.integer  "category_id"
    t.string   "name"
    t.string   "location"
    t.string   "email"
    t.integer  "phone_no"
    t.string   "opening_hours"
    t.string   "closing_hours"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "zip_code"
    t.integer  "consumer_id"
  end

  create_table "sub_categories", :force => true do |t|
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "description"
    t.integer  "category_id"
    t.string   "title"
    t.integer  "store_id"
  end

end
