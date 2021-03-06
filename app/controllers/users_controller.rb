class UsersController < ApplicationController
  def index
  	@user = User.find(params[:id])
  end
  def show
  	@user = User.find(params[:id])
    @exams = current_user.exams
    puts_money
    puts @exams

  end

  def new
  	@user = User.new
  end
  
  def create 
  	@user = User.new(user_params)
  	if @user.save
  		sign_in @user
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
