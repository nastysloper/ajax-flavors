class CommentsController < ApplicationController
  def create
    @comment = Comment.new(params[:comment])
    if @comment.save
      redirect_to @comment.post
    else
      flash[:error] = "Unable to save post"
      redirect_to @comment.post
    end
  end
end

