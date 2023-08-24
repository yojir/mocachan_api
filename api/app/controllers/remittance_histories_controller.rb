class RemittanceHistoriesController < ApplicationController
  def create
    ActiveRecord::Base.transaction do
      money = remittance_params[:amount]
      src_user = User.find(remittance_params[:src_id])
      dst_user = User.find(remittance_params[:dst_id])
      new_src_user_money = src_user.money - money
      new_dst_user_money = dst_user.money + money
      Remittancehistory.create!(remittance_params)
      src_user.update!(money: new_src_user_money)
      dst_user.update!(money: new_dst_user_money)
      render json: src_user
    end
  rescue => e
    render json: e
  end

private
  def remittance_params
    params.permit(:src_id, :dst_id, :amount, :message)
  end
end
