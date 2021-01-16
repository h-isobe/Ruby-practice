### Cランクレベルアップメニュー


## 単純な入出力
string = gets
puts string


## 複数行にわたる出力
i = gets.to_i
num = 'paiza'
i.times do |num|
    puts 'paiza'
end


## 複数行にわたる入力
count = gets.to_i
count.times do
    puts i = gets.to_i
end


## 半角スペース区切りでの出力
i = gets.to_i
array = ["paiza"] * i
puts array.join(' ')