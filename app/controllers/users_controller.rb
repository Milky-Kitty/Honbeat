class UsersController < ApplicationController
    
    def show
        @user = User.find(params[:id])
        render :show
    end
    
    def create
        @user = User.n