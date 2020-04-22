class AuthenticationController < ApplicationController
    
    def login
        @user = User.find_by(username: params[:username])

        if !@user or !@user.authenticate params[:password]
            render status: :unauthorized
        else 
            render status: :ok
        end
    end 
end
