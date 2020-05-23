class ListPage < Page
  attr_reader :title, :author

  def initialize(title, author)
    super(title, author)
  end

  def make_html
    text = "<html><head><title>#{title}</title></head>\n"
    text << "<body>\n"
    text << "<h1>#{title}</h1>\n"
    text << "<ul>\n"
    content.each do |item|
      text << item.make_html
    end
    text << "</ul>\n"
    text << "<hr><address>#{author}</address></hr>\n"
    text << "</body></html>\n"
    text
  end

  def output
    puts make_html
  end
end
