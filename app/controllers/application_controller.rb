class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  # app/controllers/application_controller.rb

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end

  def after_sign_up_path_for(resource)
    flash[:notice] = "Please update your profile information."
    profile_path # Change this to the actual path of the profile setup page
  end

end
