class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def show
    @comment = Comment.find(params[:id])

    @rating = Rating.where(comment_id: @comment.id, user_id: @current_user.id).first
    unless @rating
      @rating = Rating.create(comment_id: @comment.id, user_id: @current_user.id, score: 0)
    end
  end
end