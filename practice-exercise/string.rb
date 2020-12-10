## 1:rubyで文字列を出力する
puts 'こんにちは'
p 'こんにちは'
print 'こんにちは'


## 2:rubyで英語の文字列を大文字にする
p 'hello'.upcase
#=> "HELLO"


## 3:rubyで英語の文字列を子文字にする
p 'HELLO'.downcase
#=> "hello"


## 4:rubyで文字列を配列にする
str = "こんにちは,おはよう,ruby"
str.split(",")
#=> ["こんにちは", "おはよう", "ruby"]


## 5:rubyで"こおんはによちうわ"を"おはよう"と出力する
str = "こおんはによちうわ"
str.each_char.with_index do |c, index|
  if index.odd?
    print c
  end
end


## 6:rubyで以下を出力した場合は、選択肢１と２どちらで表示されるか？
str = "こんにちは, こんばんわ"
  str.delete!("こ")
p str 
#=> "んにちは, んばんわ"
# 破壊的メソッド化しているため


## 7:rubyで文字列を挿入する
str = "Ruby,Python,PHP"
str.insert(4, ",Java")
p str
#=> "Ruby,Java,Python,PHP"


## 8:rubyで文字列を挿入する:応用編
str = "ありがとう,ごめんなさい,すいません"
str.insert(5, ",おはよう")
str.insert(-1, ",こんばんは")
puts str
#=> "ありがとう,おはよう,ごめんなさい,すいません,こんばんは"


## 9:rubyで文字列反転させる
str = "プログラミング言語：ruby"
str.reverse
#=> "ybur：語言グンミラグロプ"

## 10:rubyの変数について
case = "ruby,python,php,java"
p case
#=> 文法エラーとなる。caseは予約後のため


## 11:rubyのsliceメソッドについて
string = "プログラミング ruby"
string.slice(0,8)
#=> "プログラミング " (sliceで0番目から開始して8番目まで取り出している)
p string
#=> "プログラミング ruby" (非破壊的メソッドのため)


## 12:rubyのgsubメソッド
string = "東京　大阪 名古屋"
p string.gsub(/ |　/, ',')
#=> "東京,大阪,名古屋"