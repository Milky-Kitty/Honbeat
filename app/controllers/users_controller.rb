class UsersController < ApplicationController
    
    def show
        @user = User.find(params[:id])
        render :show
    end
    
    def create
        @user = User.new(user_params)
        if @user.save
            #logs in user upon creation
            login_user!(@user)
      