class TablePage < Page
  attr_reader :title, :author

  def initialize(title, author)
    super(title, author)
  end

  def make_html
    text = "<html><head><title>#{title}</title></head>\n"
    text << "<body>\n"
    text << "<h1>#{title}</h1>\n"
    text << "<table>\n"
    content.each do |item|
      text << "<tr>#{item.make_html}</tr>\n"
    end
    text << "</table>\n"
    text << "<hr><address>#{author}</address></hr>\n"
    text << "</body></html>\n"
    puts text
  end

  def output
    puts make_html
  end
end
