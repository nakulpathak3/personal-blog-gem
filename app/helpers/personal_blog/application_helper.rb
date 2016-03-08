require 'redcarpet'
#require 'coderay'

module PersonalBlog
  module ApplicationHelper
    
    def markdown(text)
      options = {
        filter_html:     true,
        hard_wrap:       true, 
        link_attributes: { rel: 'nofollow', target: "_blank" },
        space_after_headers: true, 
        fenced_code_blocks: true,
        autolink: true,
        strikethrough: true,
      }

      extensions = {
        autolink:           true,
        superscript:        true,
      }

      renderer = Redcarpet::Render::HTML.new(options)
      markdown = Redcarpet::Markdown.new(renderer, extensions)

      markdown.render(text).html_safe
    end

  #      class CodeRayify < Redcarpet::Render::HTML
  #        def block_code(code, language)
  #          CodeRay.scan(code, language).div
  #        end
  #      end
  #  
  #      def markdown(text)
  #        coderayified = CodeRayify.new(filter_html: true, 
  #                                      hard_wrap: true)
  #        options = {
  #          fenced_code_blocks: true,
  #          no_intra_emphasis: true,
  #          autolink: true,
  #          strikethrough: true,
  #          lax_html_blocks: true,
  #          superscript: true,
  #          hardwrap: true
  #        }
  #        markdown_to_html = Redcarpet::Markdown.new(coderayified, options)
  #        markdown_to_html.render(text).html_safe
  #      end
    
  end
end
