module PersonalBlog
  class Article < ActiveRecord::Base
    has_many :comments, dependent: :destroy
    has_many  :taggings
    has_many :tags, through :taggings 

    def all_tags=(names)
      self.tags = names.split(",").map do |name|
        Tag.where(name: name.strip).first_or_create!
      end
    end

    # Check later if you even need this
    def all_tags
      self.tags.map(&:name).join(", ")
    end

  end
end
