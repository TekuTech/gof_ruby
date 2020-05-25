class ProbStrategy < Strategy
  attr_accessor :prev_hand_value, :current_hand_value, :history

  def initialize
    @prev_hand_value = 0
    @current_hand_value = 0
    @history = [
      [1, 1, 1],
      [1, 1, 1],
      [1, 1, 1]
    ]
  end

  def next_hand
    bet = rand(get_sum(current_hand_value))
    hand_value = if bet < history[current_hand_value][0]
                   0
                 elsif bet < (history[current_hand_value][0] + history[current_hand_value][1])
                   1
                 else
                   2
                 end

    self.prev_hand_value = current_hand_value
    self.current_hand_value = hand_value
    Hand.get_hand(hand_value)
  end

  def study(boolean_win)
    if boolean_win
      history[prev_hand_value][current_hand_value] += 1
    else
      history[prev_hand_value][(current_hand_value + 1) % 3] += 1
      history[prev_hand_value][(current_hand_value + 2) % 3] += 1
    end
  end

  private

  def get_sum(hv)
    history[hv].sum
  end
end
