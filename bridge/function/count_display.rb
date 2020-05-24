require_relative 'display'

class CountDisplay < Display
  def initialize(impl)
    super(impl)
  end

  def multi_display(count)
    open
    count.times { print }
    close
  end
end
