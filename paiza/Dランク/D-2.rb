#aとbを足した数を出力して下さい。
#最後は改行し、余計な文字、空行を含んではいけません。

#入力例
# 1 1

#出力例
# 2


#splitで標準入力から1行を空白で区切ってaとbを配列にする
a, b = gets.split.map &:to_i
puts a + b
