module MenuHelper
  def menu_for(user)
    if user.has_role? :super_admin
      first_link = link_to new_admin_path, data: { turbo_frame: 'admin_dashboard' }, class: "mt-3 bg-gray-400 px-3 text-gray-800 rounded-t-lg hover:bg-gray-700 hover:text-gray-50 ease-in-out duration-300" do
                    "<i class='fa-solid fa-user-plus'></i>".html_safe +  "New Admin"
                  end
      second_link = link_to admins_path, data: { turbo_frame: 'admin_dashboard' }, class: "mt-3 bg-gray-400 px-3 text-gray-800 rounded-t-lg hover:bg-gray-700 hover:text-gray-50 ease-in-out duration-300" do
                      "<i class='fa-solid fa-users'></i>".html_safe + "All Admins"
                    end
      third_link = link_to new_student_path, data: { turbo_frame: 'admin_dashboard' }, class: "mt-3 bg-gray-400 px-3 text-gray-800 rounded-t-lg hover:bg-gray-700 hover:text-gray-50 ease-in-out duration-300" do
                    "<i class='fa-solid fa-user-plus'></i>".html_safe + "New Student"
                  end
      fourth_link = link_to students_path, data: { turbo_frame: 'admin_dashboard' }, class: "mt-3 bg-gray-400 px-3 text-gray-800 rounded-t-lg hover:bg-gray-700 hover:text-gray-50 ease-in-out duration-300" do
                    "<i class='fa-solid fa-user-group'></i>".html_safe + "Students"
                  end
      first_link + second_link + third_link + fourth_link +
      "<div class='mt-3 bg-gray-400 px-3 text-gray-800 rounded-t-lg hover:bg-gray-700 hover:text-gray-50 ease-in-out duration-300'>".html_safe +
        "<i class='fa-solid fa-chalkboard'></i>".html_safe + "Classes" +
      "</div> ".html_safe +
      "<div class='mt-3 bg-gray-400 px-3 text-gray-800 rounded-t-lg hover:bg-gray-700 hover:text-gray-50 ease-in-out duration-300'>".html_safe +
        "<i class='fa-solid fa-chalkboard-user'></i>".html_safe + "Teachers" +
      "</div> ".html_safe
    
    elsif user.has_role? :accountant
      first_link = link_to new_student_path, data: { turbo_frame: 'admin_dashboard' }, class: "mt-3 bg-gray-400 px-3 text-gray-800 rounded-t-lg hover:bg-gray-700 hover:text-gray-50 ease-in-out duration-300" do
                    "<i class='fa-solid fa-user-plus'></i>".html_safe + "New Student"
                    link_to students_path, data: { turbo_frame: 'admin_dashboard' }, class: "mt-3 bg-gray-400 px-3 text-gray-800 rounded-t-lg hover:bg-gray-700 hover:text-gray-50 ease-in-out duration-300" do
                      "<i class='fa-solid fa-user-group'></i>".html_safe + "Students"
                    end        end
      second_link = link_to '#', data: { turbo_frame: 'admin_dashboard' }, class: "mt-3 bg-gray-400 px-3 text-gray-800 rounded-t-lg hover:bg-gray-700 hover:text-gray-50 ease-in-out duration-300" do
                    "<i class='fa-solid fa-user-plus'></i>".html_safe + "Fee Structure"
                  end
      third_link = link_to students_path, data: { turbo_frame: 'admin_dashboard' }, class: "mt-3 bg-gray-400 px-3 text-gray-800 rounded-t-lg hover:bg-gray-700 hover:text-gray-50 ease-in-out duration-300" do
                    "<i class='fa-solid fa-user-group'></i>".html_safe + "Students"
                  end

      first_link + second_link + third_link
    
    elsif user.has_role? :director
      first_link = link_to admins_path, data: { turbo_frame: 'admin_dashboard' }, class: "mt-3 bg-gray-400 px-3 text-gray-800 rounded-t-lg hover:bg-gray-700 hover:text-gray-50 ease-in-out duration-300" do
                    "<i class='fa-solid fa-users'></i>".html_safe + "All Admins"
                  end
      second_link = link_to students_path, data: { turbo_frame: 'admin_dashboard' }, class: "mt-3 bg-gray-400 px-3 text-gray-800 rounded-t-lg hover:bg-gray-700 hover:text-gray-50 ease-in-out duration-300" do
                    "<i class='fa-solid fa-user-group'></i>".html_safe + "Students"
                  end
      first_link + second_link +
      "<div class='mt-3 bg-gray-400 px-3 text-gray-800 rounded-t-lg hover:bg-gray-700 hover:text-gray-50 ease-in-out duration-300'>".html_safe +
        "<i class='fa-solid fa-chalkboard'></i>".html_safe + "Classes" +
      "</div> ".html_safe +
      "<div class='mt-3 bg-gray-400 px-3 text-gray-800 rounded-t-lg hover:bg-gray-700 hover:text-gray-50 ease-in-out duration-300'>".html_safe +
        "<i class='fa-solid fa-chalkboard-user'></i>".html_safe + "Teachers" +
      "</div>".html_safe
    
    else
      link_to students_path, data: { turbo_frame: 'admin_dashboard' }, class: "mt-3 bg-gray-400 px-3 text-gray-800 rounded-t-lg hover:bg-gray-700 hover:text-gray-50 ease-in-out duration-300" do
        "<i class='fa-solid fa-user-group'></i>".html_safe + "Students"
      end
    end
  end
end