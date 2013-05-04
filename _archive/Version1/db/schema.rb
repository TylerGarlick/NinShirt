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

ActiveRecord::Schema.define(:version => 20110308162140) do

  create_table "order_items", :force => true do |t|
    t.integer  "shirt_size_id"
    t.integer  "order_id"
    t.integer  "quantity"
    t.float    "price"
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
    t.integer  "user_id"
    t.integer  "order_status_id"
    t.string   "billing_first_name"
    t.string   "billing_last_name"
    t.string   "billing_address"
    t.string   "billing_address2"
    t.string   "billing_city"
    t.string   "billing_state"
    t.string   "billing_zip"
    t.string   "shipping_first_name"
    t.string   "shipping_last_name"
    t.string   "shipping_address"
    t.string   "shipping_address2"
    t.string   "shipping_city"
    t.string   "shipping_state"
    t.string   "shipping_zip"
    t.string   "transaction_id"
    t.string   "shipping_tracking_number"
    t.float    "subtotal"
    t.float    "shipping"
    t.float    "total"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shirt_sizes", :force => true do |t|
    t.integer  "shirt_id"
    t.string   "name"
    t.string   "gender"
    t.boolean  "is_active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shirt_types", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "color"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "gender"
  end

  create_table "shirts", :force => true do |t|
    t.integer  "shop_id"
    t.string   "name"
    t.string   "description"
    t.float    "price"
    t.float    "wholesale_price"
    t.boolean  "is_active"
    t.boolean  "is_approved"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "mens_shirt_type_id"
    t.integer  "womens_shirt_type_id"
    t.string   "splashscreen_file_name"
    t.string   "splashscreen_content_type"
    t.integer  "splashscreen_file_size"
    t.datetime "splashscreen_updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "shops", :force => true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.boolean  "is_active"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
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
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

end
