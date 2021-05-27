class ApplicationController < ActionController::Base
    # put code in here so that it is shared throughout the entire app 
    before_action :set_current_user

    def set_current_user
        if session[:user_id]
            Current.user = User.find_by(id: session[:user_id])
            #will return the number for the user as long as the number is set and is not nil
        end
    end
end
