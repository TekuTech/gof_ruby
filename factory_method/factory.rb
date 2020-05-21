class Factory
  def create(owner)
    product = create_product(owner)
    register_product(product)
    product
  end

  def create_product(owner)
    raise 'Method not defined in subclass.'
  end

  def register_product(product)
    raise 'Method not defined in subclass.'
  end
end
