class DashboardController < ApplicationController
    before_action :authenticate_user!


    def show
        @user = current_user
        # Add logic to fetch and prepare relevant information and activities
    end
end
