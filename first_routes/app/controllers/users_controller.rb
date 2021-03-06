class UsersController < ApplicationController
  def index
    users = User.all
    render json: users
  end
  
  def create
    user = User.new(user_params)
    if user.save
      render json: user
    else
      render json: user.errors.full_messages, status: 418
    end
  end
  
  def show
    user = User.find_by_id(params[:id])
    render json: user
  end
  
  def update
    user = User.find_by_id(params[:id])
    if user && user.update(user_params)
      render json: user
    elsif user
      render json: user.errors.full_messages, status: 418
    else
      render json: "doesn't exist", status: 418
    end
  end
  
  def destroy
    user = User.find_by_id(params[:id])
    if user
      user.destroy
      render json: user
    else 
      render json: "doesn't exist", status: 418
    end
  end
  
  private
  
  def user_params
    params.require(:user).permit(:username)
  end
end