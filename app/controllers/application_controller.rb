class ApplicationController < ActionController::Base
    def current_user
        return nil unless session[:session_token]
        @cu