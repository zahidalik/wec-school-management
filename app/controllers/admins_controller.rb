class AdminsController < ApplicationController
  before_action :set_admin, only: [:show, :profile, :edit, :update]
  before_action :authenticate_super_admin!, only: [:new, :create, :edit, :update, :index]
  
  def index
    @admins = Admin.all
  end
  
  def show  
  end

  def profile

  end

  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.new(admin_params)
    if @admin.save
      respond_to do |format|
        format.turbo_stream
        format.html { redirect_to root_path}
      end
    else
      render :new, status: :bad_request
    end
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
                                  :contact_two, :street, :city, :region, :password,
                                  :password_confirmation, role_ids: [])
  end
end
