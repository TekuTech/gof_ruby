Dir[File.expand_path('../factory', __FILE__) << '/*.rb'].each do |file|
  require file
end
Dir[File.expand_path('../list_factory', __FILE__) << '/*.rb'].each do |file|
  require file
end
Dir[File.expand_path('../table_factory', __FILE__) << '/*.rb'].each do |file|
  require file
end

# ruby main.rb 後にファクトリのクラス名を入力してあげる
# 例) ListFactory
class_name = gets.chomp
factory =  Factory.get_factory(class_name)

link_a = factory.create_link("A", "http://www.aaa.com/")
link_b = factory.create_link("B", "http://www.bbb.com/")

tray = factory.create_tray("alphabet")
tray.add(link_a)
tray.add(link_b)

page = factory.create_page("LinkPage", "ほげふが")
page.add(tray)

puts
puts page.title
puts page.author
page.content.each do |content|
  puts content.caption
  content.list.each do |list|
    puts list.caption
    puts list.url
  end
end

puts
puts page.output
