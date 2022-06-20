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

ActiveRecord::Schema[7.0].define(version: 2022_06_19_184814) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "full_name"
    t.string "username"
    t.string "email"
    t.string "contact_one"
    t.string "contact_two"
    t.string "street"
    t.string "city"
    t.string "region"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admins_roles", id: false, force: :cascade do |t|
    t.bigint "admin_id"
    t.bigint "role_id"
    t.index ["admin_id", "role_id"], name: "index_admins_roles_on_admin_id_and_role_id"
    t.index ["admin_id"], name: "index_admins_roles_on_admin_id"
    t.index ["role_id"], name: "index_admins_roles_on_role_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.string "resource_type"
    t.bigint "resource_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
    t.index ["resource_type", "resource_id"], name: "index_roles_on_resource"
  end

  create_table "students", force: :cascade do |t|
    t.string "full_name"
    t.date "d_o_b"
    t.string "tribe"
    t.string "father_name"
    t.string "father_alive"
    t.string "mother_name"
    t.string "mother_alive"
    t.string "contact_one"
    t.string "contact_two"
    t.string "street"
    t.string "city"
    t.string "region"
    t.string "status_of_parents"
    t.string "qualification"
    t.string "pervious_school"
    t.string "physical_wellbeing"
    t.string "mental_wellbeing"
    t.string "health_issues"
    t.string "admission_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "boarding_status"
  end

end
