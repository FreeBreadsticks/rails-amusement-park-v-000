require 'pry'
class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    # binding.pry
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      render :new
    end

  end

  def update
    @user = User.find(params[:id])
  end

  def destroy
  end

  def index
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :height, :nausea, :tickets, :admin, :happiness)
  end
end
