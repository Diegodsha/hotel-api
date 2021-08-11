class ApplicationController < ActionController::API
  # skip_before_action :verify_authenticity_token
  # def current_user
  #   User.find_by(id: session[:user_id])
  # end

  # def logged_in?
  #   !current_user.nil?
  # end
  include ::ActionController::Cookies
  include Rescue
  include SessionsHelper
  # include CurrentUserConcern
end
