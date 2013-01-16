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

ActiveRecord::Schema.define(:version => 20130115034316) do

  create_table "contributions", :force => true do |t|
    t.string   "name"
    t.string   "address1"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "email"
    t.string   "occupation"
    t.string   "employer_name"
    t.string   "employer_address1"
    t.string   "employer_address2"
    t.string   "employer_city"
    t.string   "employer_state"
    t.string   "employer_zip"
    t.string   "card_type"
    t.date     "card_expires_on"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "address2"
    t.boolean  "legal_notice"
    t.string   "ip_address"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "amount"
  end

  create_table "galleries", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "gallery_id"
    t.string   "cover_image"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "photos", :force => true do |t|
    t.string   "image"
    t.integer  "gallery_id"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "photos", ["gallery_id"], :name => "index_photos_on_gallery_id"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "remember_token"
    t.string   "password_digest"
  end

  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
