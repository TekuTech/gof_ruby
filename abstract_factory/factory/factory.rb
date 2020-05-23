class Factory
  def self.get_factory(class_name)
    begin
      factory = Object.const_get(class_name).new
    rescue NameError
      puts "クラス#{class_name}が見つかりません。"
    end
    factory
  end

  def create_link(caption, url)
    raise 'Method not defined in subclass.'
  end

  def create_tray(caption)
    raise 'Method not defined in subclass.'
  end

  def create_page(title, author)
    raise 'Method not defined in subclass.'
  end
end
