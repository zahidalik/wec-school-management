module SessionsHelper
  def log_in(admin)
    session[:admin_id] = admin.id
  end

  def current_user
    if (admin_id = session[:admin_id])
      @current_user ||= Admin.find_by(id: admin_id)
    end
  end

  def logged_in?
    !current_user.nil?
  end

  def log_out
    session.delete(:admin_id)
    @current_user = nil
  end

  def authenticate_user!
    unless logged_in?
      flash[:warning] = "Prohibited action"
      redirect_to root_url
    end
  end

end