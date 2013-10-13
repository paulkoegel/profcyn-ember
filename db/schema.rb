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

ActiveRecord::Schema.define(version: 20131012231717) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: true do |t|
    t.text     "text"
    t.integer  "question_id"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "image_1"
    t.string   "image_2"
    t.string   "image_3"
  end

  add_index "answers", ["question_id"], name: "index_answers_on_question_id", using: :btree
  add_index "answers", ["user_id"], name: "index_answers_on_user_id", using: :btree

  create_table "authentications", force: true do |t|
    t.integer  "user_id",    null: false
    t.string   "provider",   null: false
    t.string   "uid",        null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "authentications", ["user_id"], name: "index_authentications_on_user_id", using: :btree

  create_table "categories", force: true do |t|
    t.string   "title"
    t.string   "facebook_page_url"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "title_short"
    t.string   "dawanda_widget_uuid"
    t.string   "videos_title"
    t.text     "short_description"
    t.string   "slug"
    t.string   "dawanda_widget_source_id"
  end

  add_index "categories", ["slug"], name: "index_categories_on_slug", unique: true, using: :btree

  create_table "courses", force: true do |t|
    t.string   "title"
    t.string   "trailer_vimeo_id"
    t.string   "short_description"
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
    t.integer  "category_id"
    t.integer  "gross_price_cents",          default: 0,     null: false
    t.string   "currency",                   default: "EUR", null: false
    t.integer  "trainer_id"
    t.text     "description"
    t.text     "prerequisites"
    t.text     "selling_points"
    t.string   "dawanda_widget_uuid"
    t.string   "material_url"
    t.string   "slug"
    t.text     "dawanda_product_url"
    t.integer  "net_price_cents",            default: 0,     null: false
    t.string   "dawanda_widget_source_id"
    t.string   "wide_teaser_image"
    t.string   "wide_teaser_title"
    t.boolean  "show_on_homepage"
    t.string   "supplied_items_description"
  end

  add_index "courses", ["category_id"], name: "index_courses_on_category_id", using: :btree
  add_index "courses", ["slug"], name: "index_courses_on_slug", unique: true, using: :btree
  add_index "courses", ["trainer_id"], name: "index_courses_on_trainer_id", using: :btree

  create_table "credit_card_payments", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "order_id"
    t.string   "aasm_state"
    t.string   "token"
    t.string   "masked"
    t.text     "api_requests",         default: [], array: true
    t.text     "api_responses",        default: [], array: true
    t.string   "debit_transaction_id"
  end

  create_table "episodes", force: true do |t|
    t.integer  "course_id"
    t.string   "vimeo_video_id"
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "small_vimeo_thumbnail_url"
    t.string   "medium_vimeo_thumbnail_url"
    t.string   "large_vimeo_thumbnail_url"
    t.string   "extra_large_vimeo_thumbnail_url"
    t.integer  "position"
  end

  add_index "episodes", ["course_id"], name: "index_episodes_on_course_id", using: :btree

  create_table "friendly_id_slugs", force: true do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true, using: :btree
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type", using: :btree
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id", using: :btree
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type", using: :btree

  create_table "galleries", force: true do |t|
    t.string "title"
    t.text   "description"
    t.string "location"
  end

  create_table "images", force: true do |t|
    t.text     "url"
    t.string   "title"
    t.text     "description"
    t.integer  "gallery_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "likes", force: true do |t|
    t.integer  "user_id"
    t.integer  "work_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "likes", ["user_id"], name: "index_likes_on_user_id", using: :btree
  add_index "likes", ["work_id"], name: "index_likes_on_work_id", using: :btree

  create_table "orders", force: true do |t|
    t.integer  "course_id"
    t.integer  "user_id"
    t.integer  "gross_price_cents", default: 0,     null: false
    t.string   "currency",          default: "EUR", null: false
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.string   "aasm_state"
    t.string   "uuid"
    t.integer  "net_price_cents",   default: 0,     null: false
    t.string   "payment_method"
    t.string   "shipping_name"
    t.string   "shipping_address"
    t.string   "shipping_zip"
    t.string   "shipping_city"
    t.string   "shipping_country"
    t.string   "shipping_comment"
  end

  add_index "orders", ["course_id"], name: "index_orders_on_course_id", using: :btree
  add_index "orders", ["user_id"], name: "index_orders_on_user_id", using: :btree
  add_index "orders", ["uuid"], name: "index_orders_on_uuid", unique: true, using: :btree

  create_table "paypal_payments", force: true do |t|
    t.integer  "order_id"
    t.string   "api_payment_id"
    t.string   "api_payer_id"
    t.text     "api_requests",   default: [],              array: true
    t.text     "api_responses",  default: [],              array: true
    t.text     "api_errors",     default: [],              array: true
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "aasm_state"
  end

  add_index "paypal_payments", ["order_id"], name: "index_paypal_payments_on_order_id", using: :btree

  create_table "questions", force: true do |t|
    t.string   "title"
    t.text     "text"
    t.integer  "user_id"
    t.integer  "questionable_id"
    t.string   "questionable_type"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "image_1"
    t.string   "image_2"
    t.string   "image_3"
  end

  add_index "questions", ["questionable_id"], name: "index_questions_on_questionable_id", using: :btree
  add_index "questions", ["questionable_type"], name: "index_questions_on_questionable_type", using: :btree
  add_index "questions", ["user_id"], name: "index_questions_on_user_id", using: :btree

  create_table "reviews", force: true do |t|
    t.integer  "user_id"
    t.integer  "course_id"
    t.text     "text"
    t.integer  "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "reviews", ["course_id"], name: "index_reviews_on_course_id", using: :btree
  add_index "reviews", ["user_id"], name: "index_reviews_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at",                                          null: false
    t.datetime "updated_at",                                          null: false
    t.string   "remember_me_token"
    t.datetime "remember_me_token_expires_at"
    t.string   "reset_password_token"
    t.datetime "reset_password_token_expires_at"
    t.datetime "reset_password_email_sent_at"
    t.datetime "last_login_at"
    t.datetime "last_logout_at"
    t.datetime "last_activity_at"
    t.string   "name"
    t.string   "avatar"
    t.text     "biography"
    t.boolean  "trainer",                         default: false
    t.boolean  "admin",                           default: false
    t.string   "gender",                          default: "neutral"
    t.string   "last_login_from_ip_address"
    t.string   "slug"
    t.integer  "discourse_user_id"
    t.string   "discourse_username"
  end

  add_index "users", ["last_logout_at", "last_activity_at"], name: "index_users_on_last_logout_at_and_last_activity_at", using: :btree
  add_index "users", ["remember_me_token"], name: "index_users_on_remember_me_token", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", using: :btree
  add_index "users", ["slug"], name: "index_users_on_slug", unique: true, using: :btree

  create_table "work_comments", force: true do |t|
    t.integer  "user_id"
    t.integer  "work_id"
    t.text     "text"
    t.text     "image_1"
    t.text     "image_2"
    t.text     "image_3"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "work_comments", ["user_id"], name: "index_work_comments_on_user_id", using: :btree
  add_index "work_comments", ["work_id"], name: "index_work_comments_on_work_id", using: :btree

  create_table "works", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "image_1"
    t.string   "image_2"
    t.string   "image_3"
    t.integer  "category_id"
    t.string   "howto_type"
    t.integer  "course_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.text     "howto_url"
    t.string   "slug"
  end

  add_index "works", ["category_id"], name: "index_works_on_category_id", using: :btree
  add_index "works", ["course_id"], name: "index_works_on_course_id", using: :btree
  add_index "works", ["slug"], name: "index_works_on_slug", unique: true, using: :btree
  add_index "works", ["user_id"], name: "index_works_on_user_id", using: :btree

end
