class ApplicationController < ActionController::Base
  protect_from_forgery
  before_action :authenticate_user!, except: [:home]
  before_action :configure_permitted_parameters, if: :devise_controller?

  private 
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:signup) {|u| u.permit(:username, :email, :password)}

      devise_parameter_sanitizer.permit(:account_update) {|u| u.permit(:username, :email, :password, :current_password)}
    end
end


