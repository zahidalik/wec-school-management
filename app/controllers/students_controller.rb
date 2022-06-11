class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update]

  def index

  end

  def show
    
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
  end

  def edit
    
  end

  def update
    
  end

  private

  def set_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:full_name, :d_o_b, :tribe, :father_name, :father_alive, :mother_name,
                                    :mother_alive, :contact_one, :contact_two, :street, :city, :region,
                                    :status_of_parents, :qualification, :pervious_school, :physical_wellbeing,
                                    :mental_wellbeing, :health_issues, :admission_number)
  end
end
