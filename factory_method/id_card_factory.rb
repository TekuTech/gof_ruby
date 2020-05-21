class IdCardFactory < Factory
  attr_reader :owners

  def initialize
    @owners = []
  end

  def create_product(owner)
    IdCard.new(owner)
  end

  def register_product(product)
    owners << product.owner
  end
end
