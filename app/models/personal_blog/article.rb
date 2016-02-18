module PersonalBlog
  class Article < ActiveRecord::Base
    has_many :comments 
  end
end
