class StringDisplay < Display
  attr_reader :string

  def initialize(string)
    @string = string
  end

  def columns
    string.bytesize
  end

  def rows
    1
  end

  def row_text(row)
    row.zero? ? string : nil
  end
end
