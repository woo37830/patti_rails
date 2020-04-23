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

ActiveRecord::Schema.define(version: 2019_12_21_030025) do

  create_table "accounts", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "logs", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", comment: "Logging table for thrivecart webhook", force: :cascade do |t|
    t.datetime "received", null: false
    t.string "email", limit: 128, null: false
    t.string "request_json", limit: 16000, null: false
    t.string "status", limit: 128, null: false
    t.string "commit_hash", limit: 64
    t.string "branch", limit: 64
  end

  create_table "maaking_users", primary_key: "userid", id: :integer, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "username", limit: 10, default: "", null: false
    t.string "password", limit: 50, default: "", null: false
    t.string "email", limit: 50, default: "", null: false
    t.string "fullname", limit: 50
    t.string "ipaddress", limit: 50, default: "", null: false
    t.datetime "lastlogin", null: false
  end

  create_table "userTable", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "email_address", limit: 96, default: "''", null: false
    t.string "activate_code", limit: 32, default: "''", null: false
    t.integer "activated_yes", default: 0, null: false
    t.index ["email_address"], name: "email_address", unique: true
  end

  create_table "users", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", comment: "Cross reference table between thrivecart and engagemore", force: :cascade do |t|
    t.datetime "added", null: false
    t.string "email", limit: 128, null: false
    t.string "engagemoreid", limit: 64, null: false
    t.integer "orderid", null: false
    t.integer "invoiceid", null: false
    t.string "status", default: "active", null: false
    t.string "product", default: "product-9", null: false
  end

end
