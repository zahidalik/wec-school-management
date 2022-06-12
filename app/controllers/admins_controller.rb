class AdminsController < ApplicationController
  def show
    @admin = Admin.find(params[:id])  
  end

  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.new(admin_params)
  end

  private

  def admin_params
    params.require(:admin).permit(:full_name, :username, :email, :contact_one, 
                                  :contact_two, :street, :city, :region, :password_digest)
  end
end
