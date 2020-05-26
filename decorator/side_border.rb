class SideBorder < Border
  attr_reader :border_char

  def initialize(display, char)
    super(display)
    @border_char = char
  end

  def columns
    1 + display.columns + 1
  end

  def rows
    display.rows
  end

  def row_text(row)
    border_char + display.row_text(row) + border_char
  end
end
