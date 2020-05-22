require_relative 'product'
require_relative 'manager'
require_relative 'message_box'
require_relative 'underline_pen'

manager = Manager.new
upen = UnderlinePen.new('~')
mbox = MessageBox.new('*')
sbox = MessageBox.new('/')

manager.register('strong message', upen)
manager.register('warning box', mbox)
manager.register('slash box', sbox)

p1 = manager.create('strong message')
p1.use('Hello, World.')

p2 = manager.create('warning box')
p2.use('Hello, World.')

p3 = manager.create('slash box')
p3.use('Hello, World.')
