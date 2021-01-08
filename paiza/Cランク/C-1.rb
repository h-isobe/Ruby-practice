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


## 宝くじ

winning_number = gets.to_s.chomp
counts = gets.to_i

second_winning_number = winning_number.slice(2..5).to_i
third_winning_number = winning_number.slice(3..5).to_i

strings = []

counts.times do
  string = gets.chomp
  strings << string
end

strings.each do |st|
  if  st.chomp.to_i == winning_number.to_i
    puts 'first'
  elsif  st.chomp.to_i  == winning_number.to_i + 1 or st.chomp.to_i  == winning_number.to_i - 1
    puts 'adjacent'
  elsif  st.chomp.slice(2..5).to_i == second_winning_number
    puts 'second'
  elsif  st.chomp.slice(3..5).to_i == third_winning_number
    puts 'third'
  else
    puts 'blank'
  end
end


## 単語のカウント
string = gets.chomp.split(" ")
hashs = string.group_by(&:itself).map{ |key, value| [key, value.count] }
hashs.each do |key, value|
    puts "#{key} #{value}"
end
