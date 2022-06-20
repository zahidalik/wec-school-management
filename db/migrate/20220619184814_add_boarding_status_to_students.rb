class AddBoardingStatusToStudents < ActiveRecord::Migration[7.0]
  def change
    add_column :students, :boarding_status, :string
  end
end
