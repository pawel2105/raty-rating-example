class RatingsController < ApplicationController
  def update
    @comment = Comment.find(params[:comment_id])

    if @rating = Rating.where(comment_id: @comment.id, user_id: @current_user.id).first
      @rating.update_attributes(score: params[:score])
    else
      @rating = Rating.create(comment_id: @comment.id, user_id: @current_user.id, score: params[:score])
    end
  end
end