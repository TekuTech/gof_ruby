class Entry
  def name
    raise 'Method not defined in subclass.'
  end

  def size
    raise 'Method not defined in subclass.'
  end

  def add
    raise FileTreatmentException
  end

  def print_list
    print_list_with_prefix('')
  end

  def to_s
    "#{name}(#{size})"
  end

  protected

  def print_list_with_prefix(prefix)
    raise 'Method not defined in subclass.'
  end
end
