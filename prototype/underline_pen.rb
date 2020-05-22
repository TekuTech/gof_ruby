class UnderlinePen < Product
  attr_reader :underline_char

  def initialize(underline_char)
    @underline_char = underline_char
  end

  def use(string)
    length = string.bytesize
    puts "\"#{string}\""
    puts " #{underline_char * length} "
  end
end
