class CharDisplay < Display
  attr_reader :char

  def initialize(char)
    @char = char
  end

  def open
    print '<<'
  end

  def printt
    print char
  end

  def close
    print '>>'
    2.times { puts }
  end
end

