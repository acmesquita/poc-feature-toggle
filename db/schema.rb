# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_03_26_163205) do
  create_table "feature_resources", force: :cascade do |t|
    t.integer "feature_id", null: false
    t.integer "resource_id", null: false
    t.boolean "value", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["feature_id"], name: "index_feature_resources_on_feature_id"
    t.index ["resource_id"], name: "index_feature_resources_on_resource_id"
  end

  create_table "features", force: :cascade do |t|
    t.string "flag"
    t.integer "feature_resources_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["feature_resources_id"], name: "index_features_on_feature_resources_id"
  end

  create_table "resources", force: :cascade do |t|
    t.string "uid"
    t.integer "feature_resources_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["feature_resources_id"], name: "index_resources_on_feature_resources_id"
  end

  add_foreign_key "feature_resources", "features"
  add_foreign_key "feature_resources", "resources"
end
