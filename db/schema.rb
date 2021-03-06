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

ActiveRecord::Schema.define(:version => 20130703190408) do

  create_table "members", :force => true do |t|
    t.string   "name"
    t.string   "phone_number"
    t.string   "email"
    t.string   "street"
    t.string   "postal_code"
    t.string   "city"
    t.string   "gender"
    t.integer  "merchant_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "members", ["merchant_id"], :name => "index_members_on_merchant_id"

  create_table "merchants", :force => true do |t|
    t.string   "store_name"
    t.string   "street"
    t.string   "postal_code"
    t.string   "city"
    t.string   "describtion"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.float    "longitude"
    t.float    "latitude"
  end

  create_table "offers", :force => true do |t|
    t.string   "title"
    t.date     "start_date"
    t.date     "end_date"
    t.text     "describtion"
    t.integer  "merchant_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "offers", ["merchant_id"], :name => "index_offers_on_merchant_id"

  create_table "promotions", :force => true do |t|
    t.string   "title"
    t.datetime "start_time"
    t.text     "method"
    t.integer  "offer_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "promotions", ["offer_id"], :name => "index_promotions_on_offer_id"

end
