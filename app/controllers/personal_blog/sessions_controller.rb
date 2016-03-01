require_dependency "personal_blog/application_controller"

module PersonalBlog
  class SessionsController < ApplicationController
    
    def new
    end

    def create
      session[:password] = params[:session][:password]
      if admin?
        flash[:notice] = "Successfully Logged In"
        redirect_to posts_path
      else
        flash[:notice] = "Incorrect password, please try again."
        redirect_to login_path
      end
    end

    def destroy
      reset_session
      flash[:notice] = 'Successfully Logged Out'
      redirect_to login_path
    end
  end
end
