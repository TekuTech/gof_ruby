require_relative 'entry'
require_relative 'directory'
require_relative 'common_file'
require_relative 'file_treatment_exception'

begin
  puts 'Making root entries...'
  root_dir = Directory.new('root')
  bin_dir = Directory.new('bin')
  tmp_dir = Directory.new('tmp')
  usr_dir = Directory.new('usr')

  root_dir.add(bin_dir)
  root_dir.add(tmp_dir)
  root_dir.add(usr_dir)
  bin_dir.add(
    CommonFile.new('vi', 10000)
  )
  bin_dir.add(
    CommonFile.new('latex', 20000)
  )
  root_dir.print_list

  puts
  puts 'Making user entries...'
  yuki = Directory.new('yuki')
  hanako = Directory.new('hanako')
  tomura = Directory.new('tomura')
  usr_dir.add(yuki)
  usr_dir.add(hanako)
  usr_dir.add(tomura)
  yuki.add(
    CommonFile.new('display.html', 100)
  )
  yuki.add(
    CommonFile.new('Composite.java', 200)
  )
  hanako.add(
    CommonFile.new('memo.text', 300)
  )
  tomura.add(
    CommonFile.new('game.doc', 400)
  )
  tomura.add(
    CommonFile.new('junk.mail', 500)
  )
  root_dir.print_list
rescue FileTreatmentException => e
  puts e
end
