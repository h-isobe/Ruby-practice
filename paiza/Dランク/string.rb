###文字列処理


## 文字列の出力
string = 'paiza'
puts string
#=> paiza


## 文字列の受け取り
string = gets.chomp
puts string


## i 文字目の出力
string = gets.chomp
number = gets.to_i

puts string.slice(number-1)


## 文字列の条件判定
string = gets.chomp
if string == 'paiza'
  puts 'YES'
else
  puts 'NO'
end


## 文字列の文字数
string = gets.chomp
puts string.length
