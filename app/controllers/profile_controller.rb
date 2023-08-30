class ProfilesController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update(profile_params)
      flash[:success] = 'Profile updated successfully.'
      redirect_to dashboard_path
    else
      render :show
    end
  end

  private

  def profile_params
    params.require(:user).permit(:first_name, :last_name, :phone_number, :national_id)
  end
end
