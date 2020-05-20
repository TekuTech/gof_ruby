require_relative 'display'
require_relative 'char_display'
require_relative 'string_display'

d1 = CharDisplay.new('C')
d2 = StringDisplay.new('Hello, World.')
d3 = StringDisplay.new('HogeFugaPiyo!')

d1.display
d2.display
d3.display
