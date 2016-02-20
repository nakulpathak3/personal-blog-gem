module PersonalBlog
  class Article < ActiveRecord::Base
    has_many :comments, dependent: :destroy
    has_many  :taggings
    has_many :tags, through :taggings 
  end
end
