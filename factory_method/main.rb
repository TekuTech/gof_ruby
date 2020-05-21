require_relative 'factory'
require_relative 'product'
require_relative 'id_card'
require_relative 'id_card_factory'
require_relative 'business_card'
require_relative 'business_card_factory'

# スーパークラスのインターフェースを使用してインスタンスを生成
# Factory, Productはサブクラスに依存していない
factory = IdCardFactory.new
card1 = factory.create('1人目')
card2 = factory.create('2人目')
card3 = factory.create('3人目')

card1.use
card2.use
card3.use

factory2 = BusinessCardFactory.new
card4 = factory2.create('4人目')
card5 = factory2.create('5人目')
card6 = factory2.create('6人目')

card4.use
card5.use
card6.use
