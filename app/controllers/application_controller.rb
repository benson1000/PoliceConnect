class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  # app/controllers/application_controller.rb

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
    devise_parameter_sanitizer.permit(:account_update, keys: [:phone_number, :national_id, :first_name, :last_name])
  end

  def after_sign_up_path_for(resource)
    profile_path # Change this to the actual path of the profile setup page
  end

end
