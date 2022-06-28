class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :profile, :edit, :update]
  before_action :authenticate_super_admin_or_accountant!, only: [:new, :create, :edit, :update]

  def index
    @students = Student.all
  end

  def show
    
  end

  def profile

  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    
    if @student.save
      respond_to do |format|
        format.turbo_stream
        format.html {redirect_to root_url}
      end
    else
      render :new, status: :bad_request
    end
  end

  def edit
    
  end

  def update
    if @student.update(student_params)
      respond_to do |format|
        format.turbo_stream
      end
    else
      render :edit, status: :bad_request
    end
  end

  private

  def set_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:full_name, :d_o_b, :tribe, :father_name, :father_alive, :mother_name,
                                    :mother_alive, :contact_one, :contact_two, :street, :city, :region,
                                    :status_of_parents, :qualification, :pervious_school, :physical_wellbeing,
                                    :mental_wellbeing, :health_issues, :admission_number, :boarding_status)
  end
end
