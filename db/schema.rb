# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_11_09_202912) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ems", force: :cascade do |t|
    t.string "mane"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ems_ens", id: false, force: :cascade do |t|
    t.bigint "en_id", null: false
    t.bigint "em_id", null: false
    t.index ["em_id", "en_id"], name: "index_ems_ens_on_em_id_and_en_id"
    t.index ["en_id", "em_id"], name: "index_ems_ens_on_en_id_and_em_id"
  end

  create_table "ens", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
