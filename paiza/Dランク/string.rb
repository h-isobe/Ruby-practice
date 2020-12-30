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


## 文字の検索
string = gets.chomp
char = gets.chomp
a = string.index(char)
puts a.to_i + 1


## 文字列の連結
num = gets.to_i
num.times do
  string = gets.chomp
  print string.concat
end


## 部分文字列
string = gets.chomp
n, m = gets.split.map(&:to_i)
puts string[n-1...m]


## 文字列の挿入
n = gets.chomp
m = gets.chomp
num = gets.to_i
puts n.insert(num, m)


## 文字列の書き換え
string = gets.chomp
n, m = gets.split
string[n.to_i-1] = m
puts string


## 文字列から数値への変換
puts num = gets.to_i - 813


## 数値から文字列への変換
a = gets.to_i
b = gets.to_i
num = gets.to_i
sum = (a + b).to_s
puts sum.slice(num-1)


## 大文字から小文字への変換
puts string = gets.chomp.downcase


## 小文字から大文字への変換
puts string = gets.chomp.upcase


## 大文字小文字の反転
puts string = gets.chomp.swapcase


## 文字列の検索
str1 = gets.chomp
str2 = gets.chomp
if str1.include?(str2)
  puts 'YES'
else
  puts 'NO'
end
