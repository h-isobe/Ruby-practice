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