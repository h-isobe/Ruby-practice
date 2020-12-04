### 標準出入力色々


## 文字列の取得
string = gets.chomp
#string
puts string
#=> "string"


## 数値の取得
integer = gets.chomp.to_i
#123
puts integer
#=> 123


## 1行の要素を取得
line = gets.chomp
#line
puts line
#=> "line"


## 1行の複数行を取得(文字列の場合)
line = gets.chomp.split
#Spring Summer Autumn
puts line
#=> ["Spring", "Summer", "Autumn"]


## 1行の複数行を取得(数値の場合)
line = gets.chomp.split.map(&:to_i)
#1 2 3
puts line
#=> [1, 2, 3]


##getsメソッド(1行の入力文字を取得)
input_line = gets
#abc
#a b c
puts input_line
#abc
#a b c


## readlinesメソッド(複数行の文字列をキーボードから取得)
input_line = readlines
#abc
#def
#ghi
puts input_line
#abc
#def
#ghi


##
a = gets.to_i
input_line = readlines
puts input_line


## gets.splitメソッド

a = gets.split(" ") #=> デフォルトは空白で区切る
#aaaaa bbbbb ccccc

a #=> ["aaaaa", "bbbbb", "ccccc"]

puts a
# aaaaa
# bbbbb
# ccccc

a = gets.split(",") #=> カンマで区切る
#aaaaa, bbbbb, ccccc

a #=> ["aaaaa", "bbbbb", "ccccc"]

puts a
# aaaaa
# bbbbb
# ccccc


