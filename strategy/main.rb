require_relative 'hand'
require_relative 'player'
require_relative 'strategy'
require_relative 'winning_strategy'
require_relative 'prob_strategy'

player1 = Player.new('Taro', WinningStrategy.new)
player2 = Player.new('Hana', ProbStrategy.new)

10000.times do
  next_hand1 = player1.next_hand
  next_hand2 = player2.next_hand

  if next_hand1.stronger_than?(next_hand2)
    puts "Winner: #{player1.name}"
    player1.win
    player2.lose
  elsif next_hand2.stronger_than?(next_hand1)
    puts "Winner: #{player2.name}"
    player1.lose
    player2.win
  else
    puts 'Even...'
    player1.even
    player2.even
  end
end

puts
puts 'Total result:'
puts player1.to_s
puts player2.to_s
