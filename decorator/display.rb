class Display
  def columns
    raise 'Method not defined in subclass.'
  end

  def rows
    raise 'Method not defined in subclass.'
  end

  def row_text(row)
    raise 'Method not defined in subclass.'
  end

  def show
    rows.times.with_index do |idx|
      puts row_text(idx)
    end
  end
end
