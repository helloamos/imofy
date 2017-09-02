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

ActiveRecord::Schema.define(version: 20170831175817) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bootsy_image_galleries", force: :cascade do |t|
    t.string "bootsy_resource_type"
    t.bigint "bootsy_resource_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bootsy_resource_type", "bootsy_resource_id"], name: "idx_bootsy_i\\\nmage_galleries"
  end

  create_table "bootsy_images", force: :cascade do |t|
    t.string "image_file"
    t.bigint "image_gallery_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["image_gallery_id"], name: "index_bootsy_images_on_image_gallery_id"
  end

  create_table "contract_types", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages", force: :cascade do |t|
    t.string "sender_name"
    t.string "sender_phone"
    t.string "sender_email"
    t.text "content"
    t.bigint "recipient_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recipient_id"], name: "index_messages_on_recipient_id"
  end

  create_table "properties", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "property_type_id"
    t.bigint "contract_type_id"
    t.float "price"
    t.bigint "status_id"
    t.string "city"
    t.string "neighborhood"
    t.string "thumbnail_file_name"
    t.string "thumbnail_content_type"
    t.integer "thumbnail_file_size"
    t.datetime "thumbnail_updated_at"
    t.boolean "published", default: true
    t.boolean "featured", default: false
    t.bigint "unity_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.index ["contract_type_id"], name: "index_properties_on_contract_type_id"
    t.index ["property_type_id"], name: "index_properties_on_property_type_id"
    t.index ["status_id"], name: "index_properties_on_status_id"
    t.index ["unity_id"], name: "index_properties_on_unity_id"
    t.index ["user_id"], name: "index_properties_on_user_id"
  end

  create_table "property_types", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sessions", force: :cascade do |t|
    t.string "session_id", null: false
    t.text "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["session_id"], name: "index_sessions_on_session_id", unique: true
    t.index ["updated_at"], name: "index_sessions_on_updated_at"
  end

  create_table "statuses", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "suscribers", force: :cascade do |t|
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "unities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "login"
    t.string "company"
    t.string "city"
    t.string "country"
    t.string "address"
    t.string "phone"
    t.string "avatar_file_name"
    t.string "avatar_content_type"
    t.integer "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string "slug"
    t.integer "role_id", default: 2
    t.boolean "superadmin_role", default: false
    t.boolean "supervisor_role", default: false
    t.boolean "user_role", default: true
    t.string "provider", limit: 50, default: "", null: false
    t.string "uid", limit: 500, default: "", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
