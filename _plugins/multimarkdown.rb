require 'jekyll'
require 'rmultimarkdown'
 
class Jekyll::Converters::Markdown::MMD
  def initialize(config)
    @site_config = config
  end

  def matches(ext)
    ext =~ /^\.md$/i
  end

  def output_ext(ext)
      ".html"
    end
 
  def convert(content)
    content.sub! '<!--TOC-->', "**Table of Contents** \n\n{{TOC}}"
    content.sub! '<!--toc-->', "**Table of Contents** \n\n{{TOC}}"
    MultiMarkdown.new(content).to_html.force_encoding(Encoding::UTF_8)
  end
end
