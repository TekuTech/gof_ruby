class Display
  def display
    open
    5.times { printt }
    close
  end

  def open
    raise 'undefined method'
  end

  # 衝突回避
  def printt
    raise 'undefined method'
  end

  def cloase
    raise 'undefined method'
  end
end

