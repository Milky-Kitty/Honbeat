class UsersController < ApplicationController
    
    def show
        @user = User.find(