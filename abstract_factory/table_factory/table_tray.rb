class TableTray < Tray
  def initialize(caption)
    super(caption)
  end

  def make_html
    text = "<td>\n<table width=\"100%\" border=\"1\">\n<tr>\n"
    text << "<td bgcolor=\"#cccccc\">#{caption}</td>\n"
    text << "</tr>\n"
    text << "<tr>\n"
    list.each do |item|
      text << item.make_html
    end
    text << "</tr>\n</table>\n"
    text << "</td>\n"
    puts text
  end
end
