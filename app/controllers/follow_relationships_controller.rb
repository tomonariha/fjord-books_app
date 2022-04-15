# frozen_string_literal: true

class FollowRelationshipsController < ApplicationController
  before_action :set_user

  def create
    current_user.follow(@user)
    redirect_to user_path(@user)
  end

  def destroy
    current_user.unfollow(@user)
    redirect_to user_path(@user)
  end

  def followings
    @followings = @user.followings.order(:id).page(params[:page])
  end

  def followers
    @followers = @user.followers.order(:id).page(params[:page])
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end
end
