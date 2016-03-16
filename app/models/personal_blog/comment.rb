module PersonalBlog
  class Comment < ActiveRecord::Base
    before_save :set_anonymous_default
    validates :text, presence: true

    private 
    def set_anonymous_default
      self.author ||= 'Anonymous'
    end
  end
end
