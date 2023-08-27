class CommentsController < ApplicationController
  def create
    comment = Comment.create(comment_params)
    redirect_to catch_path(comment.catch.id)
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, catch_id: params[:catch_id])
  end
end
