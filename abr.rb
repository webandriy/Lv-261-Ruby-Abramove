load 'module.rb'
# class Abramov
class AbramovClass
  include Abramov
  require 'json'

  file = File.read('file.json')
  my_hash = JSON.parse(file)
  obj = AbramovClass.new
  puts 'Welcome!'
  loop do
    puts 'This program has the solutions for such tasks (88v, 332, 563a, 563b)'
    print "Enter the number of the task or quit \"q\" "
    choise = gets.chomp
    case choise
    when '88v'
      puts my_hash['88v']
      print 'enter natural number (at least two numbers) '
      num = gets.chomp
      obj.change(num)
    when '332'
      puts my_hash['332']
      print 'enter one natural number  '
      num = gets.chomp.to_i
      obj.four(num)
    when '563a'
      puts my_hash['563a']
      obj.a_palindrome
    when '563b'
      puts my_hash['563b']
      obj.b_palindrome
    when 'q'
      obj.game_over
    end
  end
end
