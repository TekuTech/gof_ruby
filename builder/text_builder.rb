class TextBuilder < Builder
  DECORATE_LINE = "=====================\n".freeze

  attr_accessor :text

  def initialize
    @text = ''
  end

  def make_title(title)
    text << DECORATE_LINE
    text << "『#{title}』\n"
    text << "\n"
  end
  
  def make_string(string)
    text << "■#{string}\n"
    text << "\n"
  end

  def make_items(items)
    items.each { |item| text << " ・#{item}\n" }
    text << "\n"
  end

  def close
    text << DECORATE_LINE
    puts text
    puts
  end
end
