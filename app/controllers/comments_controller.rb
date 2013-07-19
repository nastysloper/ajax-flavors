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

      format.js do
        # for the js format, app/comments/create.js.erb will be rendered
        # by default. no need to call render
        @errors = []
        if !@comment.save
          errors << "Unable to save post"
        end
      end
    end
  end
end
