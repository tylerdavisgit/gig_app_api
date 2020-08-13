class UsersController < ApplicationController
    before_action :set_user, only: [:show, :update, :destroy]

    def index
        @users = User.all 
        render json: @users
    end


    
    def show
        render json: @user.to_json(include: :gigs)
    end

    private

    def set_user
        @user = User.find(params[:id])
    end

    def user_params
        params.require(:email).permit(:gigs, :id)
    end
end
