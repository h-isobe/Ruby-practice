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