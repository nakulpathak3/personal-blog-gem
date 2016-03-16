module PersonalBlog
  class Comment < ActiveRecord::Base
    before_create :set_anonymous_default
    validates :text, presence: true

    private 
    def set_anonymous_default
      if self.author.empty?
        self.author = 'Anonymous'
      end
    end
  end
end
