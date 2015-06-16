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

ActiveRecord::Schema.define(version: 20150616031730) do

  create_table "departments", force: :cascade do |t|
    t.string   "name"
    t.string   "city"
    t.string   "state"
    t.string   "county"
    t.string   "level"
    t.text     "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"

  create_table "incidents", force: :cascade do |t|
    t.text     "summary"
    t.integer  "year"
    t.string   "month"
    t.string   "city"
    t.string   "state"
    t.string   "context"
    t.boolean  "abuse_force"
    t.boolean  "abuse_search"
    t.boolean  "abuse_misconduct"
    t.boolean  "abuse_intimidation"
    t.boolean  "abuse_sexual"
    t.boolean  "abuse_escalation"
    t.boolean  "abuse_animal"
    t.string   "force_variety"
    t.string   "search_variety"
    t.string   "misconduct_variety"
    t.string   "intimidation_variety"
    t.string   "sexual_variety"
    t.string   "escalation_variety"
    t.integer  "victim_count"
    t.text     "victim_notes"
    t.string   "victim_race"
    t.string   "victim_age"
    t.string   "victim_gender"
    t.integer  "officer_count"
    t.string   "officer_race"
    t.string   "officer_tenure"
    t.string   "officer_gender"
    t.string   "outcome_physical_variety"
    t.string   "outcome_legal_variety"
    t.string   "outcome_hr_variety"
    t.string   "outcome_internal_variety"
    t.string   "outcome_dept_statement_variety"
    t.string   "outcome_union_statement_variety"
    t.integer  "outcome_dollars"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.integer  "department_id"
    t.boolean  "abuse_retrained"
    t.boolean  "abuse_restrained"
  end

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.text     "content_md"
    t.text     "content_html"
    t.boolean  "draft",        default: false
    t.integer  "user_id"
    t.string   "slug"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "posts", ["user_id"], name: "index_posts_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "username",               default: "",    null: false
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.boolean  "admin",                  default: false, null: false
    t.boolean  "locked",                 default: false, null: false
    t.string   "slug"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["slug"], name: "index_users_on_slug", unique: true
  add_index "users", ["username"], name: "index_users_on_username", unique: true

end
