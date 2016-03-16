module PersonalBlog
  class Post < ActiveRecord::Base
    has_many :comments, dependent: :destroy
    has_many :taggings
    has_many :tags, through: :taggings 

    before_create :set_published_at
    validates :title, presence: true
    validates :body, presence: true

    def all_tags=(names)
      self.tags = names.split(",").map do |name|
        Tag.where(name: name.strip).first_or_create!
      end
    end

    def all_tags
      self.tags.map(&:name).join(", ")
    end

    def self.tagged_with(name)
      Tag.find_by_name!(name).posts
    end

    private

    def set_published_at
      self.published_at = Time.now
    end

  end
end
