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

ActiveRecord::Schema.define(version: 2019_05_09_023420) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "comments", force: :cascade do |t|
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "project_enablr_id"
    t.bigint "project_id"
    t.index ["project_enablr_id"], name: "index_comments_on_project_enablr_id"
    t.index ["project_id"], name: "index_comments_on_project_id"
  end

  create_table "perks", force: :cascade do |t|
    t.integer "minimum_amount", null: false
    t.boolean "unlimited", null: false
    t.integer "enablr_amount", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "project_id"
    t.integer "amount_left"
    t.string "name"
    t.string "rewards"
    t.datetime "estimated_delivery"
    t.boolean "not_deliverable"
    t.index ["project_id"], name: "index_perks_on_project_id"
  end

  create_table "project_enablrs", force: :cascade do |t|
    t.integer "pledged_amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "project_id"
    t.bigint "perk_id"
    t.index ["perk_id"], name: "index_project_enablrs_on_perk_id"
    t.index ["project_id"], name: "index_project_enablrs_on_project_id"
    t.index ["user_id"], name: "index_project_enablrs_on_user_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name", null: false
    t.string "description", null: false
    t.boolean "hardware", null: false
    t.integer "current_amount", null: false
    t.integer "target_amount", null: false
    t.datetime "target_date", null: false
    t.string "category", null: false
    t.string "country", null: false
    t.string "city", null: false
    t.integer "backer_amount", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_projects_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.boolean "fundraiser", null: false
    t.string "country", null: false
    t.string "city", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "comments", "project_enablrs"
  add_foreign_key "comments", "projects"
  add_foreign_key "perks", "projects"
  add_foreign_key "project_enablrs", "perks"
  add_foreign_key "project_enablrs", "projects"
  add_foreign_key "project_enablrs", "users"
  add_foreign_key "projects", "users"
end
