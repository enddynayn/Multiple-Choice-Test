class UsersController < ApplicationController
  def index
  	@user = User.find("522e1a7fe0d1cdeebc00000a")
  end
  def show
  	@user = User.find("522e1a7fe0d1cdeebc00000a")
  end

  def new
  	@user = User.new
  end
  
  def create 
  	@user = User.new(user_params)
  	if @user.save
  		redirect_to @user
  	else
  		render 'new'
  	end
  end

  def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
end
