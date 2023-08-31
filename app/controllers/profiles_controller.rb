class ProfilesController < ApplicationController
  before_action :authenticate_user!
  
  def edit
    @profile = current_user.profile
  end

  def show
    @profile = current_user.profile
  end

  def update
    @profile = current_user.profile
    if @profile.update(profile_params)
      flash[:success] = 'Profile updated successfully.'
      redirect_to dashboard_path
    else
      flash[:danger] = "There is an error in your profile data."
      redirect_to edit_profile_path
    end
  end

  private

  def profile_params
    params.require(:profile).permit(:first_name, :last_name, :phone_number, :national_id)
  end
end
