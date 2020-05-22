class MessageBox < Product
  ADDITIONAL_CHARACTERS_COUNT = 4

  attr_reader :decorate_char

  def initialize(char)
    @decorate_char = char
  end

  def use(string)
    length = string.bytesize
    decorate_char_line(length)
    puts
    puts "#{decorate_char} #{string} #{decorate_char}"
    decorate_char_line(length)
    puts
  end

  private

  def decorate_char_line(length)
    print_char_count = length + ADDITIONAL_CHARACTERS_COUNT
    print_char_count.times { print decorate_char }
  end
end
