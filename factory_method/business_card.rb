class BusinessCard < Product
  attr_reader :owner

  def initialize(owner)
    puts "#{owner}の名刺を作ります。"
    @owner = owner
  end

  def use
    puts "#{owner}と申します。よろしくお願いします。"
  end
end
