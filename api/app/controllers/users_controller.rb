class UsersController < ApplicationController
  def index
    users = User.where.not(account_number: "0000001")
    render json: users
  end

  def create
    user = User.new(user_params)
    p "-----------------"
    user_params[:image]
    p "+++++++++++++++++"
    user.save
  end

  def show
    user = User.find(params[:id])
    render json: user
  end

  def first_user
    user = User.first
    render json: user
  end

private
  def user_params
    params.permit(:name, :image, :account_number, :money)
  end
end
