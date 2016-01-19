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

ActiveRecord::Schema.define(version: 20160119163836) do

  create_table "centers", force: :cascade do |t|
    t.integer  "client_id"
    t.string   "center_name"
    t.string   "address"
    t.string   "city"
    t.string   "province"
    t.string   "zip_code"
    t.string   "country"
    t.string   "phone_number_1"
    t.string   "phone_number_2"
    t.string   "fax_number"
    t.string   "email"
    t.string   "language"
    t.string   "currency"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "clients", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "clinic_name"
    t.string   "nif"
    t.string   "address"
    t.string   "city"
    t.string   "province"
    t.string   "zip_code"
    t.string   "country"
    t.string   "phone_number_1"
    t.string   "phone_number_2"
    t.string   "fax_number"
    t.string   "email"
    t.string   "language"
    t.string   "currency"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "specialties", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer  "client_id"
    t.string   "name"
    t.string   "surname_1"
    t.string   "surname_2"
    t.string   "dni"
    t.string   "passport"
    t.string   "genre"
    t.date     "birthday"
    t.string   "country"
    t.string   "phone_number_1"
    t.string   "phone_number_2"
    t.string   "email"
    t.string   "password"
    t.string   "language"
    t.string   "job_position"
    t.boolean  "is_admin?",            default: false
    t.boolean  "access_medical_data?", default: true
    t.boolean  "access_agenda?",       default: true
    t.boolean  "access_statistics?",   default: true
    t.boolean  "access_accounting?",   default: true
    t.boolean  "is_active?",           default: true
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

end
