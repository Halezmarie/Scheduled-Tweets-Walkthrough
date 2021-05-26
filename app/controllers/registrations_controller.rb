class RegistrationsController < ApplicationController
    def new
        #instance variable so that we can use it in our views
        @user = User.new
    end
end