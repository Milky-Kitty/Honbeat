class SessionsController < ApplicationController
    #login
    def create
        #find if the user exists
        user = User.find_by_credentials(param