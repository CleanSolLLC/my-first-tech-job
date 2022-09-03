class ApplicationController < ActionController::Base
  protect_from_forgery
  before_action :authenticate_user!, except: [:home]
  before_action :configure_permitted_parameters, if: :devise_controller?

  private 
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:f_name_full, :l_name_initial, :email, :password])
      
      devise_parameter_sanitizer.permit(:account_update, keys: [:f_name_full, :l_name_initial, :email, :password, :current_password])
    end
end


