class MainController < ApplicationController
    def index
        #the flash message gets stored in the flash hash object
        flash[:notice] = "Logged in successfully"
        flash[:alert] = "Invalid email or password"
    end
end