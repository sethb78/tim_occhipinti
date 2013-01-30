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

ActiveRecord::Schema.define(:version => 20130130175558) do

  create_table "active_admin_comments", :force => true do |t|
    t.string   "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "admin_users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "blogs", :force => true do |t|
    t.string   "title"
    t.string   "tagline"
    t.datetime "date"
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

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

  create_table "news_articles", :force => true do |t|
    t.string   "title"
    t.string   "source"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.date     "date"
    t.string   "link"
    t.text     "snippet"
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
