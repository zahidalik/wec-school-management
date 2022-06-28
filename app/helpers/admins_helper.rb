module AdminsHelper
  def authenticate_super_admin!
    unless current_user.has_role? :super_admin
      flash[:warning] = "Access denied"
      redirect_to root_path
    end
  end

  def authenticate_super_admin_or_director_ceo!
    unless current_user.has_role?(:super_admin) || current_user.has_role?(:director) || current_user.has_role?(:ceo)
      flash[:warning] = "Access denied"
      redirect_to root_path
    end
  end

  def authenticate_super_admin_or_accountant!
    unless current_user.has_role?(:super_admin) || current_user.has_role?(:accountant)
      flash[:warning] = "Access denied"
      redirect_to root_path
    end
  end
end