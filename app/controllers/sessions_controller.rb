class SessionsController < ApplicationController
  skip_before_action :authenticate_user!
  
  def new
  end

  def create
    admin = Admin.find_by(username: params[:session][:username])
    if admin && admin.authenticate(params[:session][:password])
      log_in(admin)
      flash[:success] = "Successfully logged in"
      redirect_to admin_path(admin)
    else
      flash.now[:danger] = "Invalid username/password combination"
      render :new, status: :bad_request
    end
  end

  def destroy
    log_out if logged_in?
    flash[:success] = "Successfully logged out"
    redirect_to root_url
  end
end