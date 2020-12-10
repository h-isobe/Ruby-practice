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