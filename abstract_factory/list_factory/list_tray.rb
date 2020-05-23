class ListTray < Tray
  attr_reader :caption

  def initialize(caption)
    super(caption)
  end

  def make_html
    text = "<li>\n#{caption}\n<ul>\n"
    list.each do |item|
      text << item.make_html
    end
    text << "</ul>\n</li>\n"
    text
  end
end
