class ApplicationController < ActionController::Base
  include SessionsHelper
  include AdminsHelper
  include MenuHelper
  
  before_action :authenticate_user!

  add_flash_types :success, :danger, :info, :warning
end
