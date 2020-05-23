class ListLink < Link
  attr_reader :caption, :url

  def initialize(caption, url)
    super(caption, url)
  end

  def make_html
    "<li><a href=#{url}>#{caption}</a></li>\n"
  end
end
