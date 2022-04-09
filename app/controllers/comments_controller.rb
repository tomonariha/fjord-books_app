# frozen_string_literal: true

class CommentsController < ApplicationController
  def create
    comment = @commentable.comments.build(comment_params)
    comment.user_id = current_user.id
    comment.save
    redirect_to request.referer
  end

  def destroy
    comment = Comment.find(params[:id])
    comment.destroy
    redirect_to request.referer
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :user_id)
  end
end
