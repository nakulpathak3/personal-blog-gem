require_dependency "personal_blog/application_controller"
require "pry"

module PersonalBlog
  class SessionsController < ApplicationController
    
    def new
    end

    def create
      binding.pry
      session[:password] = params[:password]
      flash[:notice] = 'Successfully Logged In'
      redirect_to posts_path
    end

    def destroy
      reset_session
      flash[:notice] = 'Successfully Logged Out'
      redirect_to login_path
    end
  end
end
