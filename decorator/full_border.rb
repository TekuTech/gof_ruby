class FullBorder < Border
  def initialize(display)
    super(display)
  end

  def columns
    1 + display.columns + 1
  end

  def rows
    1 + display.rows + 1
  end

  def row_text(row)
    if row.zero? || row == (display.rows + 1)
      "+#{make_line('-', display.columns)}+"
    else
      "|#{display.row_text(row - 1)}|"
    end
  end

  private

  def make_line(char, count)
    char * count
  end
end
