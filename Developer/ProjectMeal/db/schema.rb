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

ActiveRecord::Schema.define(version: 2019_10_02_213442) do

  create_table "org_companies", force: :cascade do |t|
    t.string "name", null: false
    t.string "avatar"
    t.text "description"
    t.string "verification_doc"
    t.boolean "verified"
    t.integer "typ_company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["typ_company_id"], name: "index_org_companies_on_typ_company_id"
  end

  create_table "org_people", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["confirmation_token"], name: "index_org_people_on_confirmation_token", unique: true
    t.index ["email"], name: "index_org_people_on_email", unique: true
    t.index ["reset_password_token"], name: "index_org_people_on_reset_password_token", unique: true
  end

end
