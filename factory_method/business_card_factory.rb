class BusinessCardFactory < Factory
  attr_reader :owners

  def initialize
    @owners = []
  end

  def create_product(owner)
    BusinessCard.new(owner)
  end

  def register_product(product)
    owners << product.owner
  end
end
