#整数 N が入力として与えられます。
#1からNまでの整数を1から順に表示してください。
#ただし、表示しようとしている数値が、
#・3の倍数かつ5の倍数のときには、"Fizz Buzz"
#・3の倍数のときには、"Fizz"
#・5の倍数のときには、"Buzz"
#を数値の代わりに表示してください。

#入力例
# 5

#出力例
# 1
# 2
# FIzz
# 4
# Buzz


N = gets.to_i

(1..N).each do |n|

  if n % 15 == 0
    puts "Fizz Buzz"
  elsif n % 3 == 0
    puts "Fizz"
  elsif n % 5 == 0
    puts "Buzz"
  else 
    puts n
  end

end
