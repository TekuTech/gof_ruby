require_relative 'display'
require_relative 'string_display'
require_relative 'border'
require_relative 'full_border'
require_relative 'side_border'

b1 = StringDisplay.new('Hello, World.')
b2 = SideBorder.new(b1, '#')
b3 = FullBorder.new(b2)

puts
b1.show
puts
b2.show
puts
b3.show
puts

b4 = SideBorder.new(
  FullBorder.new(
    FullBorder.new(
      SideBorder.new(
        FullBorder.new(
          StringDisplay.new('Hello, World.')
        ),
        '*'
      )
    )
  ),
  '/'
)

b4.show
