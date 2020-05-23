class Item
  attr_reader :caption

  def initialize(caption)
    @caption = caption
  end

  def make_html
    raise 'Method not defined in subclass.'
  end
end
