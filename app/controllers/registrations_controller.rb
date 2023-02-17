class RegistrationsController < ApplicationController
    def new
        @user = User.new
    end
    def create
        @user = User.new(user_params)
        if @user.save
            redirect_to root_path, notice: "Bravo, tu fais partie de la bande"
        else
            flash[:alert] = "Y'a un problème (message en double de celui du formulaire)"
            render :new
        end
    end

private
 
    def user_params
      params.required(:user).permit(:email, :password, :password_confirmation)
    end
end
