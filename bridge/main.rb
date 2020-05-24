Dir[File.expand_path('../function', __FILE__) << '/*.rb'].each do |file|
  require file
end
Dir[File.expand_path('../implementation', __FILE__) << '/*.rb'].each do |file|
  require file
end

d1 = Display.new(
  StringDisplayImpl.new('Hello, Japan.')
)
d2 = CountDisplay.new(
  StringDisplayImpl.new('Hello, World.')
)
d3 = CountDisplay.new(
  StringDisplayImpl.new("Hello, Universe.")
)

d1.display
puts
d2.display
puts
d3.display
puts
d3.multi_display(5)
