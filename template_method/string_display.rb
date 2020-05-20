class StringDisplay < Display
  attr_reader :string, :width

  def initialize(string)
    @string = string
    @width = string.bytesize
  end

  def open
    print_line
  end

  def printt
    puts "|#{string}|"
  end

  def close
    print_line
    puts
  end

  private

  def print_line
    bars = '-' * width
    puts "+#{bars}+"
  end
end
