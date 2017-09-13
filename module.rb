# module for class Abramov
module Abramov
  ONE_HUNDRED_LOOP = 100

  def change(num)
    if num.length < 2
      puts 'you entered less than 2 digits, please try one more time'
    else
      num[0], num[-1] = num[-1], num[0]
      puts num.to_i
    end
  end

  def a_palindrome
    arr_pol = []
    ONE_HUNDRED_LOOP.times do |count|
      arr_pol << count if a_palindrome?(count * count)
    end
    output(arr_pol)
  end

  def b_palindrome
    arr_pol = []
    ONE_HUNDRED_LOOP.times do |count|
      arr_pol << count if a_palindrome?(count) && a_palindrome?(count * count)
    end
    output(arr_pol)
  end

  def a_palindrome?(n)
    n == n.to_s.reverse.to_i
  end

  def output(arr_pol)
    arr_pol.length.times do |count|
      puts "palindrome: #{arr_pol[count]}"
    end
  end

  def four(num)
    if num > 0
      (0..Math.sqrt(num).round).each do |x|
        (0..Math.sqrt(num).round).each do |y|
          (0..Math.sqrt(num).round).each do |z|
            (0..Math.sqrt(num).round).each do |t|
              if num == x**2 + y**2 + z**2 + t**2
              puts "This numbers #{x},#{y},#{z},#{t} are correct"
             end
            end
          end
        end
      end
    else
      puts 'you entered negative number'
    end
  end

  def game_over
    puts "Thank you.\nProgram is over!"
    exit(0)
  end
end
