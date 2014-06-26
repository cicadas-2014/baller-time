class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create
        u = User.create!(user_params)
        redirect_to user_path(u)
    end

    def show
        @user = User.find(params[:id])
        render :show
    end

    private

    def user_params
        params.require(:user).permit(:email)
    end
end
