# frozen_string_literal: true

class UsersController < ApplicationController
  def index
    @users = User.page(params[:page])
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:name, :post_code, :address, profile, password, password_confirmation)
  end
end
