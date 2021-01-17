class ApplicationController < ActionController::Base
    def current_user
        return nil unless session[:session_token]
        @current_user ||= User.find_by(session