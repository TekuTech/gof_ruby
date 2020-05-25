class Hand
  attr_reader :hand_value

  def initialize(hand_value)
    @hand_value = hand_value
  end

  HAND_VALUE_G = 0
  HAND_VALUE_C = 1
  HAND_VALUE_P = 2

  HANDS = [
    Hand.new(HAND_VALUE_G),
    Hand.new(HAND_VALUE_C),
    Hand.new(HAND_VALUE_P)
  ].freeze

  def self.get_hand(hand_value)
    HANDS[hand_value]
  end

  def stronger_than?(hand)
    fight(hand) == 1
  end

  def weaker_than?(hand)
    fight(hand) == -1
  end

  private

  def fight(hand)
    case hand.hand_value
    when hand_value
      0
    when hand_value + 1 % 3
      1
    else
      -1
    end
  end
end
