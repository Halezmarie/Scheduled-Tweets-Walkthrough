class RegistrationsController < ApplicationController
    def new
        # instance variable so that we can use it in our views
        @user = User.new
    end

    def create
       @user = User.new(user_params)
       # take that hash of params and give it to user.new
       if @user.save 
        # if it is successful then redirect
        session[:user_id] = @user.id
        # sign in the user into their session
        redirect_to root_path, notice: "Successfully created account"
       else
        render :new
    end
end

    private

    def user_params
        params.require(:user).permit(:email, :password, :password_confirmation)
        # these are the only things you're allowed to set 

    end
end
