class SessionsController < ApplicationController
    #login
    def create
        #find if the user exists
        user = User.find_by_credentials(params[:user][:email], params[:user][:password])
        #if no user exists, throw an error during the response
        if user.nil?
            flash.now[:errors] = ["Incorrect email/password combo"]
            render :new
        else  
            login_user!(user)
            redirect_to user_url(params[:user