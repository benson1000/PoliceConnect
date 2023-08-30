class Users::RegistrationsController < ApplicationController

    def new_profile
        @user = current_user
    end
    
    def create_profile
        @user = current_user
        if @user.update(profile_params)
          redirect_to dashboard_path, notice: 'Profile updated successfully.'
        else
          render :new_profile
        end
    end
    
    private
    
    def profile_params
        params.require(:user).permit(:phone_number, :national_id, :first_name, :last_name)
    end

end
