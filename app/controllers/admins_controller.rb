class AdminsController < ApplicationController
  before_action :set_admin, only: [:show, :profile, :edit, :update]
  
  def show  
  end

  def profile

  end

  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.new(admin_params)
  end

  def edit
  end

  def update
    if @admin.update(admin_params)
      render :profile
    else
      render :edit, status: :bad_request
    end
  end

  private

  def set_admin
    @admin = Admin.find(params[:id])
  end

  def admin_params
    params.require(:admin).permit(:full_name, :username, :email, :contact_one, 
                                  :contact_two, :street, :city, :region, :password, :password_confirmation)
  end
end
