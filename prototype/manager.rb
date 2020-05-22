class Manager
  attr_reader :showcase

  def initialize
    @showcase = {}
  end

  def register(string, prototype)
    showcase[string] = prototype
  end

  def create(prototype_name)
    p = showcase[prototype_name]
    p.dup
  end
end
