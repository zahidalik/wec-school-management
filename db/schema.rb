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

ActiveRecord::Schema[7.0].define(version: 2022_06_11_143455) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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
  end

end