class MainController < ApplicationController
    def index
        if session[:user_id]
            @user = User.find_by(id: session[:user_id])
            #will return the number for the user as long as the number is set and is not nil
        end
    end
end



















    # ex: flash messages
        # the flash message gets stored in the flash hash object
        # flash.now[:notice] = "Logged in successfully"
        # flash.now[:alert] = "Invalid email or password"
        # # .now only shows it on the current request