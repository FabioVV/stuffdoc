class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :profile_image])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :profile_image])
  end

  # def after_sign_in_path_for(resource)

  # end
  # 
  def after_sign_in_path_for(resource)
    dashboard_path
  end

end
