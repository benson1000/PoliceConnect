class ProfilesController < ApplicationController
  before_action :authenticate_user!
  
  def edit
    @user = current_user  # Load the associated user
    @profile = @user.profile || @user.build_profile  
  end

  def show
    @user = current_user
    @profile = @user.profile
  end

  def update
    @profile = current_user.profile || current_user.build_profile
    if @profile.update(profile_params)
      session[:update_profile_message] = nil
      flash[:success] = 'Profile updated successfully.'
      redirect_to dashboard_path
    else
      session[:update_profile_message] = 'Your profile information is incomplete. Please update your profile.'
      flash[:danger] = "There is an error in your profile data."
      redirect_to edit_profile_path
    end
  end

  def dashboard
    @user = current_user
    @profile = @user.profile || @user.build_profile
  end

  private

  def profile_params
    params.require(:profile).permit(:first_name, :last_name, :phone_number, :national_id)
  end
end
