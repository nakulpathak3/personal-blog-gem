module PersonalBlog
  module CommentsHelper
    def markdown_without_p(text)
      Regexp.new('^<p>(.*)<\/p>$').match(markdown(text))[1]
    end
  end
end
