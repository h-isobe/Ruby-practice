## 1: rubyのtrue falseについて１
test = 2
if test
  puts "trueとなります。"
else
  puts "falseとなります。"
end
#=> trueとなります。


## 2: rubyの三項演算子
p test = 2 ? "trueとなります" : "falseとなります"


## 3: rubyのtrue falseについて２
#選択肢１
false && true  #=> false
#選択肢2
true && false  #=> false
#選択肢3
true && true   #=> true
#選択肢4
false && false #=> false


## 4: rubyのcase文について
num = 2

case num
  when 1
    p 'テスト１'
  when 2
    p 'テスト２'
  when 2
    p 'テスト３'
end
#=> "テスト2"


## 5: rubyのunless文について
["東京", "大阪", "名古屋","北海道"].each do |fuken|
  unless fuken == "名古屋"
    puts "選択した都道府県は #{ fuken }"
  end
end
#=> 選択した都道府県は東京
#   選択した都道府県は大阪
#   選択した都道府県は北海道
