module PersonalBlog
  class Article < ActiveRecord::Base
    has_many :comments, dependent: :destroy
    has_many :tags, dependent: :destroy
  end
end
