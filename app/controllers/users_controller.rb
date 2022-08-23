class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      # log_in @user
      redirect_to user_path(@user), notice: 'User was successfully created.'
    else
      redirect_to new_user_path, alert: 'Something went wrong. User was not created.'
    end
  end

  private
  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end