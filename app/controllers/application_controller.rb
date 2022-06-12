class ApplicationController < ActionController::Base
  include SessionsHelper
  
  before_action :authenticate_user!

  add_flash_types :success, :danger, :info, :warning
end
