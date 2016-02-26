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

ActiveRecord::Schema.define(version: 20160226155316) do

  create_table "carts", force: :cascade do |t|
    t.integer  "manifest",     limit: 4
    t.string   "session",      limit: 255
    t.integer  "qty",          limit: 4
    t.decimal  "price",                    precision: 10
    t.datetime "date_created"
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
  end

  create_table "divisions", force: :cascade do |t|
    t.string   "label",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "divisions_users", id: false, force: :cascade do |t|
    t.integer "division_id", limit: 4, null: false
    t.integer "user_id",     limit: 4, null: false
    t.boolean "can_approve"
  end

  create_table "formats", force: :cascade do |t|
    t.string   "media",      limit: 255
    t.string   "size",       limit: 255
    t.string   "filetype",   limit: 255
    t.string   "fund_code",  limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "items", force: :cascade do |t|
    t.string   "label",      limit: 255
    t.string   "url",        limit: 255
    t.string   "uri",        limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "manifest",   limit: 4
  end

  create_table "manifests", force: :cascade do |t|
    t.string   "call_num",    limit: 255
    t.string   "label",       limit: 255
    t.text     "memo",        limit: 65535
    t.string   "url",         limit: 255
    t.string   "uri",         limit: 255
    t.integer  "division",    limit: 4
    t.integer  "format",      limit: 4
    t.integer  "permissions", limit: 4
    t.integer  "start_item",  limit: 4
    t.integer  "end_item",    limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "item_qty",    limit: 4
    t.integer  "qty",         limit: 4
  end

  create_table "manifests_orders", id: false, force: :cascade do |t|
    t.integer  "manifest_id",  limit: 4,                null: false
    t.integer  "order_id",     limit: 4,                null: false
    t.integer  "qty",          limit: 4
    t.decimal  "price",                  precision: 10
    t.integer  "approved_by",  limit: 4
    t.datetime "approved_on"
    t.datetime "date_created"
  end

  create_table "order_histories", force: :cascade do |t|
    t.integer  "order_id",             limit: 4
    t.datetime "submitted"
    t.datetime "last_update"
    t.text     "memo",                 limit: 65535
    t.string   "shipping_fname",       limit: 255
    t.string   "shipping_lname",       limit: 255
    t.string   "shipping_org",         limit: 255
    t.string   "shipping_address1",    limit: 255
    t.string   "shipping_address2",    limit: 255
    t.string   "shipping_city",        limit: 255
    t.string   "shipping_postal_code", limit: 255
    t.string   "shipping_country",     limit: 255
    t.string   "shipping_phone",       limit: 255
    t.string   "shipping_email",       limit: 255
    t.string   "payment_fname",        limit: 255
    t.string   "payment_lname",        limit: 255
    t.string   "payment_org",          limit: 255
    t.string   "payment_address1",     limit: 255
    t.string   "payment_address2",     limit: 255
    t.string   "payment_city",         limit: 255
    t.string   "payment_postal_code",  limit: 255
    t.string   "payment_country",      limit: 255
    t.string   "payment_phone",        limit: 255
    t.string   "payment_email",        limit: 255
    t.string   "shipping_method",      limit: 255
    t.decimal  "shipping_cost",                      precision: 8, scale: 2
    t.string   "patron_netid",         limit: 255
    t.string   "patron_aeonid",        limit: 255
    t.string   "gateway_confirm_num",  limit: 255
    t.boolean  "agree_to_terms"
    t.decimal  "amt_paid",                           precision: 8, scale: 2
    t.decimal  "amt_due",                            precision: 8, scale: 2
    t.integer  "discount_percent",     limit: 4
    t.string   "patron_ip_address",    limit: 255
    t.integer  "status",               limit: 4
    t.datetime "created_at",                                                 null: false
    t.datetime "updated_at",                                                 null: false
  end

  add_index "order_histories", ["order_id"], name: "index_order_histories_on_order_id", using: :btree
  add_index "order_histories", ["status"], name: "index_order_histories_on_status", using: :btree

  create_table "orders", force: :cascade do |t|
    t.datetime "submitted"
    t.datetime "last_update"
    t.text     "memo",                 limit: 65535
    t.string   "shipping_fname",       limit: 255
    t.string   "shipping_lname",       limit: 255
    t.string   "shipping_org",         limit: 255
    t.string   "shipping_address1",    limit: 255
    t.string   "shipping_address2",    limit: 255
    t.string   "shipping_city",        limit: 255
    t.string   "shipping_postal_code", limit: 255
    t.string   "shipping_country",     limit: 255
    t.string   "shipping_phone",       limit: 255
    t.string   "shipping_email",       limit: 255
    t.string   "payment_fname",        limit: 255
    t.string   "payment_lname",        limit: 255
    t.string   "payment_org",          limit: 255
    t.string   "payment_address1",     limit: 255
    t.string   "payment_address2",     limit: 255
    t.string   "payment_city",         limit: 255
    t.string   "payment_postal_code",  limit: 255
    t.string   "payment_country",      limit: 255
    t.string   "payment_phone",        limit: 255
    t.string   "payment_email",        limit: 255
    t.string   "shipping_method",      limit: 255
    t.decimal  "shipping_cost",                      precision: 8, scale: 2
    t.string   "patron_netid",         limit: 255
    t.string   "patron_aeonid",        limit: 255
    t.string   "gateway_confirm_num",  limit: 255
    t.boolean  "agree_to_terms"
    t.decimal  "amt_paid",                           precision: 8, scale: 2
    t.decimal  "amt_due",                            precision: 8, scale: 2
    t.integer  "discount_percent",     limit: 4
    t.string   "patron_ip_address",    limit: 255
    t.integer  "status",               limit: 4
    t.datetime "created_at",                                                 null: false
    t.datetime "updated_at",                                                 null: false
    t.boolean  "rush"
    t.string   "accesscode",           limit: 255
  end

  add_index "orders", ["status"], name: "index_orders_on_status", using: :btree

  create_table "permissions", force: :cascade do |t|
    t.string   "label",       limit: 255
    t.text     "description", limit: 65535
    t.decimal  "price",                     precision: 10
    t.string   "fund_code",   limit: 255
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  create_table "statuses", force: :cascade do |t|
    t.string   "label",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.boolean  "is_staff"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "order_histories", "orders"
end
