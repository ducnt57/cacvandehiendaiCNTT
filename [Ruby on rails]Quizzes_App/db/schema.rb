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

ActiveRecord::Schema.define(version: 20151104010621) do

  create_table "categories", primary_key: "cate_id", force: true do |t|    
    t.string "name"
    t.string "slug"
    t.string "icon"
  end
  create_table "choices", primary_key: "choice_id", force: true do |t|
    t.integer   "quiz_id"
    t.string    "choice_title"
    t.text      "choice_content"
  end
  create_table "quizzes", primary_key: "quiz_id", force: true do |t|
    t.integer "cate_id"
    t.string  "quiz_slug"
    t.text    "quiz_content"
    t.string  "is_correct"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "password_hash"
    t.string   "password_salt"
    t.string   "email"
    t.string   "fullname"
    t.string   "avatar"
    t.string   "level"
    t.integer  "score"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
