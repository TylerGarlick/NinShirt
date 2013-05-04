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

ActiveRecord::Schema.define(:version => 20110722051602) do

  create_table "order_items", :force => true do |t|
    t.integer  "order_id"
    t.integer  "shirt_size_id"
    t.integer  "quantity"
    t.decimal  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "order_statuses", :force => true do |t|
    t.string   "name"
    t.boolean  "is_active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", :force => true do |t|
    t.integer  "order_status_id"
    t.decimal  "subtotal"
    t.decimal  "shipping"
    t.decimal  "tax"
    t.decimal  "total"
    t.string   "shipping_first_name"
    t.string   "shipping_last_name"
    t.string   "shipping_email_address"
    t.string   "shipping_address"
    t.string   "shipping_address2"
    t.string   "shipping_city"
    t.string   "shipping_state"
    t.string   "shipping_zip"
    t.string   "shipping_method"
    t.string   "shipping_method_tracking"
    t.boolean  "is_po_box"
    t.string   "billing_first_name"
    t.string   "billing_last_name"
    t.string   "billing_email_address"
    t.string   "billing_address"
    t.string   "billing_address2"
    t.string   "billing_city"
    t.string   "billing_state"
    t.string   "billing_zip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "shirt_photos", :force => true do |t|
    t.integer  "shirt_id"
    t.string   "gender"
    t.integer  "ordinal"
    t.boolean  "is_active"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_url"
    t.boolean  "is_primary"
  end

  create_table "shirt_sizes", :force => true do |t|
    t.integer  "shirt_id"
    t.string   "size"
    t.string   "gender"
    t.boolean  "is_active"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "size_code"
  end

  create_table "shirts", :force => true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "description"
    t.decimal  "price"
    t.decimal  "whole_sale_price"
    t.boolean  "is_active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
    t.boolean  "is_admin"
    t.text     "bio"
    t.datetime "birthday"
    t.string   "website"
  end

end
