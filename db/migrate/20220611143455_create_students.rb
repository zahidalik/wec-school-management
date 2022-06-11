class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :full_name
      t.date :d_o_b
      t.string :tribe
      t.string :father_name
      t.string :father_alive
      t.string :mother_name
      t.string :mother_alive
      t.string :contact_one
      t.string :contact_two
      t.string :street
      t.string :city
      t.string :region
      t.string :status_of_parents
      t.string :qualification
      t.string :pervious_school
      t.string :physical_wellbeing
      t.string :mental_wellbeing
      t.string :health_issues
      t.string :admission_number

      t.timestamps
    end
  end
end
