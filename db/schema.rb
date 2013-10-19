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

ActiveRecord::Schema.define(version: 0) do

  create_table "pages", force: true do |t|
    t.integer "page_namespace",                                                                                                                  null: false
    t.string  "page_title",                                                                                                                      null: false
    t.binary  "page_restrictions",  limit: 255,                                                                                                  null: false
    t.integer "page_counter",       limit: 8,   default: 0,                                                                                      null: false
    t.integer "page_is_redirect",   limit: 1,   default: 0,                                                                                      null: false
    t.integer "page_is_new",        limit: 1,   default: 0,                                                                                      null: false
    t.float   "page_random",                                                                                                                     null: false
    t.binary  "page_touched",       limit: 14,  default: "\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000", null: false
    t.integer "page_latest",                                                                                                                     null: false
    t.integer "page_len",                                                                                                                        null: false
    t.binary  "page_content_model", limit: 32
  end

  create_table "revisions", force: true do |t|
    t.integer "page_id",                                                                                                                         null: false
    t.integer "rev_text_id",                                                                                                                     null: false
    t.binary  "rev_comment",        limit: 255,                                                                                                  null: false
    t.integer "rev_user",                       default: 0,                                                                                      null: false
    t.string  "rev_user_text",                  default: "",                                                                                     null: false
    t.binary  "rev_timestamp",      limit: 14,  default: "\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000", null: false
    t.integer "rev_minor_edit",     limit: 1,   default: 0,                                                                                      null: false
    t.integer "rev_deleted",        limit: 1,   default: 0,                                                                                      null: false
    t.integer "rev_len"
    t.integer "rev_parent_id"
    t.binary  "rev_sha1",           limit: 32,                                                                                                   null: false
    t.binary  "rev_content_model",  limit: 32
    t.binary  "rev_content_format", limit: 64
  end

end
