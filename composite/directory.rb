class Directory < Entry
  attr_reader :name, :directory

  def initialize(name)
    @name = name
    @directory = []
  end

  def size
    size = 0
    directory.each do |entry|
      size += entry.size
    end
    size
  end

  def add(entry)
    directory << entry
    self
  end

  def print_list_with_prefix(prefix)
    puts "#{prefix}/#{self.to_s}"
    directory.each do |entry|
      entry.print_list_with_prefix("#{prefix}/#{name}")
    end
  end
end
