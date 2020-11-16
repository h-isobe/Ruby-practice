#文字列 a と文字列 b が一致していれば "OK" 、異なっていれば "NG" と出力してください。
#出力の最後に改行を入れ、余計な文字、空行を含んではいけません。

#入力例
#paiza
#paiza

#出力例
# OK

#入力例
#paiza
#aziap

#出力例
# NG


a = gets
b = gets

if a == b
  puts "OK"
else
  puts "NG"
end
