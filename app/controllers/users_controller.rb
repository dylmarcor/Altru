class UsersController < ApplicationController

    def new 
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            flash[:notice] = "Welcome! You have successfully signed up"
            redirect_to chats_path
        else
            render :new
        end
    end

    private

    def user_params
        params.require(:user).permit(:first_name, :e_mail, :password, :password_confirmation, :giver)
    end

end
