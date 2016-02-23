module PersonalBlog
  class ApplicationController < ActionController::Base
  
    helper_method :admin?

    protected

    def admin?
      false
    end

    def authorize
      unless admin?
        flash[:error] = "unauthorized access"
        redirect_to posts_path 
        false
      end
    end

  end
end
