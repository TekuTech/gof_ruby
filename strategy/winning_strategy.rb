class WinningStrategy < Strategy
  attr_accessor :won, :prev_hand

  def initialize
    @won = false
    @prev_hand = ''
  end

  def next_hand
    prev_hand = Hand.get_hand(rand(3)) unless won
    prev_hand
  end

  def study(boolean_win)
    won = boolean_win
  end
end
