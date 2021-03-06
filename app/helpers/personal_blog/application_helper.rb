require 'redcarpet'
require 'rouge'
require 'rouge/plugins/redcarpet'

module PersonalBlog
  module ApplicationHelper
    
    class HTML < Redcarpet::Render::HTML
      include Rouge::Plugins::Redcarpet

      def rouge_formatter(opts={})
        opts = { inline_theme: nil }
        Rouge::Formatters::HTML.new(opts)
      end
    end

    def markdown(text)
      render_options = {
        filter_html: true,
        hard_wrap: true, 
        link_attributes: { rel: 'nofollow', target: "_blank" },
        space_after_headers: true,
        fenced_code_blocks: true,
      }

      extensions = {
        autolink:           true,
        superscript:        true,
        no_intra_emphasis:  true,
        lax_spacing:        true,
        strikethrough:      true,
        fenced_code_blocks: true,
        disable_indented_code_blocks: true
      }

      renderer = HTML.new(render_options)
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
