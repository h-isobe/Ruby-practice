###文字列処理


## 文字列の分割
string = gets.split(',')
puts string


## 日時データの変換その１
puts string = gets.chomp.gsub('/', '・').gsub(':', '・').split('・')
