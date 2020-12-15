## 1:繰り返し処理eachメソッドの挙動
["こんにちは","おはよう","さよなら"].each do |greeting|
  puts greeting 
end
# または
['こんにちは', 'おはよう', 'さよなら'].each {|greeting| 
  puts greeting 
}


## 2:繰り返し処理.eachwithindex メソッドの挙動１
["みかん","オレンジ","ぶどう"].each_with_index do |fruit,i|
  puts "#{i+1}" + ":" + "#{fruit}"
end


## 3:繰り返し処理.eachwithindex メソッドの挙動２
["みかん","オレンジ","ぶどう"].each_with_index do |fruit,i|
  puts fruit
end
# each_with_indexは要素とインデックス数をカウントするが、2つめの引数は選択しなくても実行はされる


## 4: 繰り返し処理.timesメソッドの挙動１
5.times do
  puts "ruby"
end


## 5: 繰り返し処理.timesメソッドの挙動２
5.times do |i|
  puts "#{i + 1}" + ":" + "ruby"
end


## 6: 繰り返し処理　後置　unless
[5, 6].each do |a|
  next unless a == 6 # もしaが6でなかったらnextでスキップして次の処理
  puts a
end
#=> 6


## 7: 繰り返し処理.all?
num=[1,3,5]
p num.all?(&:odd?)
#=> true