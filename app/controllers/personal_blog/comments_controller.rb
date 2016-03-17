require_dependency "personal_blog/application_controller"

module PersonalBlog
  class CommentsController < ApplicationController
    def create
      @post = Post.find(params[:post_id])
      @comment = @post.comments.create(comment_params)
      if @comment.valid?
        flash[:notice] = "Comment has been created!"
        redirect_to post_path(@post)
      else
        flash[:error] = "Comment must have some content."
        redirect_to post_path(@post)
      end
    end

    def destroy
      @post = Post.find(params[:post_id])
      @comment = @post.comments.find(params[:id])
      @comment.destroy
      redirect_to post_path(@post), notice: "Comment was successfully destroyed."
    end

    private
    def comment_params
      params.require(:comment).permit(:text, :author)
    end
  end
end
