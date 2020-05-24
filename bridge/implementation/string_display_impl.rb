require_relative 'display_impl'

class StringDisplayImpl < DisplayImpl
  attr_reader :string, :width

  def initialize(string)
    @string = string
    @width = string.bytesize
  end

  def raw_open
    print_line
  end

  def raw_print
    puts "|#{string}|"
  end

  def raw_close
    print_line
  end

  private

  def print_line
    print '+'
    print '-' * width
    puts '+'
  end
end
