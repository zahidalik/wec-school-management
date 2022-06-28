class Student < ApplicationRecord
  validates_presence_of :full_name, :d_o_b, :mother_name, :admission_number
end
