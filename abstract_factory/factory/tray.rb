class Tray < Item
  attr_accessor :list

  def initialize(caption)
    super(caption)
    @list = []
  end

  def add(item)
    list << item
  end
end
