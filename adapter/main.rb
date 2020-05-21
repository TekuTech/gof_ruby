require_relative 'print'
require_relative 'print_banner'
require_relative 'banner'

# Adapter越しにBannerクラスのメソッドを呼び出している
p = PrintBanner.new('Hello')
p.print_weak
p.print_strong
