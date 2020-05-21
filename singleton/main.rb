require_relative 'singleton'

puts 'Start.'
obj1 = SingletonObject.instance
obj1.counter += 1
puts obj1.counter

# インスタンスのカウントが引き継がれている(= 同一のオブジェクト)
obj2 = SingletonObject.instance
obj2.counter += 1
puts obj1.counter

# newはプライベートメソッドになり、外部から呼び出せない
begin
  SingletonObject.new
rescue => e
  puts "SingletonObject cannot constructor from outside."
  puts e
end
