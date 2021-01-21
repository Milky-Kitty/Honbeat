class ApplicationController < ActionController::Base
    def current_user
        return nil unless session[:session_token]
        @current_user ||= User.find_by(session_token: session[:session_token])
    end

    #if current_user has no instance of user, then we are not logged in
    def logged_in?
   