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

ActiveRecord::Schema.define(:version => 20110916025957) do

  create_table "blogs", :force => true do |t|
    t.integer  "user_id",     :null => false
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "blogs", ["user_id"], :name => "index_blogs_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "",          :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "",          :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "gender"
    t.string   "type",                                                           :null => false
    t.string   "status",                                :default => "inactive",  :null => false
    t.datetime "status_updated_at"
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "home_number"
    t.string   "mobile_number"
    t.string   "work_number"
    t.string   "timezone",                              :default => "Singapore"
    t.boolean  "admin",                                 :default => false
    t.boolean  "staff",                                 :default => false
    t.boolean  "notification",                          :default => true
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["first_name", "last_name"], :name => "index_users_on_first_name_and_last_name"
  add_index "users", ["home_number"], :name => "index_users_on_home_number"
  add_index "users", ["mobile_number"], :name => "index_users_on_mobile_number"
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true
  add_index "users", ["status"], :name => "index_users_on_status"
  add_index "users", ["type"], :name => "index_users_on_type"

end
