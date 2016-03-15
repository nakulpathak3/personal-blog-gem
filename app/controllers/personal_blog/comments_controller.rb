require_dependency "personal_blog/application_controller"
require_dependency "personal_blog/comments_helper"

module PersonalBlog
  class CommentsController < ApplicationController
    def create
      @post = Post.find(params[:post_id])
      @comment = @post.comments.create(comment_params)
      flash[:notice] = "Comment has been created!"
      redirect_to post_path(@post)
    end

    private
    def comment_params
      params.require(:comment).permit(:text, :author)
    end
  end
end
