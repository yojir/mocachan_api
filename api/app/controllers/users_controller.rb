class UsersController < ApplicationController
  def index
    users = User.all
    render json: users
  end

  def create
    user = User.new(user_params)
    p "-----------------"
    user_params[:image]
    p "+++++++++++++++++"
    user.save
  end

private
  def user_params
    params.permit(:name, :image, :account_number, :money)
  end
end
