class HtmlBuilder < Builder
  attr_accessor :hyper_text

  def initialize
    @hyper_text = ''
  end

  def make_title(title)
    # 今回は本にのっとりベタ書きする
    hyper_text << "<html><head><title>#{title}</title></head></html>\n"
    hyper_text << "<h1>#{title}</h1>\n"
  end

  def make_string(string)
    hyper_text << "<p>#{string}</p>\n"
  end

  def make_items(items)
    hyper_text << "<ul>\n"
    items.each do |item|
      hyper_text << tag(item)
    end
    hyper_text << "/<ul>\n"
  end

  def close
    hyper_text << "</body></html>/n"
    puts hyper_text
    puts
  end

  private

  def tag(item)
    "<li>#{item}</li>\n"
  end
end
