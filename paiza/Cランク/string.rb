###文字列処理


## 文字列の分割
string = gets.split(',')
puts string


## 日時データの変換その１
puts string = gets.chomp.gsub('/', '・').gsub(':', '・').split('・')


## 日時データの変換その２
puts string = gets.chomp.gsub('/', ' ').gsub(':', ' ').split(' ')


## 数値判定
s = gets.chomp
if s.match(/\A[0-9]+\z/)
  puts "YES"
else
  puts "NO"
end
