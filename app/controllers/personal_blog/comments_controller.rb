require_dependency "personal_blog/application_controller"

module PersonalBlog
  class CommentsController < ApplicationController
    def create
      @post = Post.find(params[:post_id])
      if @comment = @post.comments.create(comment_params)
        flash[:notice] = "Comment has been created!"
        redirect_to post_path(@post)
      else
        flash[:error] = "Fuuck"
        redirect_to post_path(@post)
      end
    end

    private
    def comment_params
      params.require(:comment).permit(:text, :author)
    end
  end
end
