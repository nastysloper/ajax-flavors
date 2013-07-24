class CommentsController < ApplicationController
  def create
    @comment = Comment.new(params[:comment])
    respond_to do |format|
      format.html do
        if @comment.save
          redirect_to @comment.post
        else
          flash[:error] = "Unable to save post"
          redirect_to @comment.post
        end
      end

      format.json do
        @errors = []
        if @comment.save
          render :json => {:comment => render_to_string("comments/_comment.html",
                           :layout => false,
                           :locals => {:comment => @comment})}
        else
          render :json => {:error => "Unable to save post"}
        end
      end
    end
  end
end
