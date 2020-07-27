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

ActiveRecord::Schema.define(version: 2020_07_27_043203) do

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.text "descrition"
    t.datetime "create_at"
    t.datetime "update_at"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "enrollments", force: :cascade do |t|
    t.integer "student_id"
    t.integer "kvantum_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "kvanta", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "students", force: :cascade do |t|
    t.boolean "organization", default: true
    t.string "inputsCertificate"
    t.string "surname_1_fam"
    t.string "inputEmail"
    t.datetime "childDateInput"
    t.boolean "gender", default: false
    t.string "inputsSchool"
    t.string "inputsClass"
    t.string "inputsKvantum"
    t.string "teacherName"
    t.string "groupTime"
    t.string "inputsNameLegalRepresentative"
    t.string "NameLegalRepresentativeTelephone"
    t.string "inputsComments"
    t.string "student_rang"
    t.string "student_exp"
    t.string "student_coin"
    t.string "student_checked"
    t.string "student_deleted"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "user_role"
    t.string "active"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
  end

end
