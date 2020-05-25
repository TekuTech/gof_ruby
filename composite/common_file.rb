class CommonFile < Entry
  attr_reader :name, :size

  def initialize(name, size)
    @name = name
    @size = size
  end

  def print_list_with_prefix(prefix)
    puts "#{prefix}/#{self.to_s}"
  end
end
