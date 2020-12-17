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


