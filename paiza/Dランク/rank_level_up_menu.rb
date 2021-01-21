### Cランクレベルアップメニュー


## STEP: 1 単純な入出力
string = gets
puts string


## STEP: 2 複数行にわたる出力
i = gets.to_i
num = 'paiza'
i.times do |num|
    puts 'paiza'
end


## STEP: 3 複数行にわたる入力
count = gets.to_i
count.times do
    puts i = gets.to_i
end


## STEP: 4 入力の配列による保持



## STEP: 5 半角スペース区切りでの出力
i = gets.to_i
array = ["paiza"] * i
puts array.join(' ')


## STEP: 6 改行区切りでの出力
count = gets.chomp.to_i
string = gets.split
string.each do |str|
    puts str
end


## FINAL問題 標準入出力
count = gets.chomp.to_i
i = 0
while i < count
  a, b = gets.split.map(&:chomp)
  puts "#{a} #{b.to_i + 1}"
  i += 1
end


## STEP: 1 整数と文字列
c = gets.chomp.to_i
i = 0
while i < c
  s = gets.chomp
  puts s.length
  i += 1
end


## STEP: 2 部分文字列
a = gets.chomp
s = gets.chomp
if s.include?(a)
  puts "YES"
else
  puts "NO"
end


## STEP: 3 数字の文字列操作
s = gets.chomp.split("")
a = s[0].to_i + s[3].to_i
b = s[1].to_i + s[2].to_i
puts a.to_s + b.to_s
