class Strategy
  def next_hand
    raise 'Method not defined in subclass.'
  end

  def study(win)
    raise 'Method not defined in subclass.'
  end
end
