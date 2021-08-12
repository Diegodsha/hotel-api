class ApplicationController < ActionController::API
  include ActionController::Cookies
  include Rescue
  include SessionsHelper
end
