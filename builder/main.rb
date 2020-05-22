require_relative 'builder'
require_relative 'director'
require_relative 'text_builder'
require_relative 'html_builder'

text_builder = TextBuilder.new
director = Director.new(text_builder)
director.construct

html_builder = HtmlBuilder.new
director2 = Director.new(html_builder)
director2.construct
