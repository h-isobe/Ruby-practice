###標準出力色々


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


