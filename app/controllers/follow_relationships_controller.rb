# frozen_string_literal: true

class FollowRelationshipsController < ApplicationController
  def create
    current_user.follow(params[:user_id])
    redirect_to request.referer
  end

  def destroy
    current_user.unfollow(params[:user_id])
    redirect_to request.referer
  end

  def followings
    user = User.find(params[:id])
    @followings = user.followings.order(:id).page(params[:page])
  end

  def followers
    user = User.find(params[:id])
    @followers = user.followers.order(:id).page(params[:page])
  end
end
