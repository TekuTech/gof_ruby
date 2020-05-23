class Page
  attr_reader :title, :author
  attr_accessor :content

  def initialize(title, author)
    @title = title
    @author = author
    @content = []
  end

  def add(item)
    content << item
  end

  def make_html
    raise 'Method not defined in subclass.'
  end

  def output
    raise 'Method not defined in subclass.'
  end
end
