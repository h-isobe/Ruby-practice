### Cランクレベルアップメニュー


## STEP: 1 単純な入出力
string = gets
puts string


## STEP: 2 複数行にわたる出力
i = gets.to_i
num = 'paiza'
i.times do |num|
    puts 'paiza'
end


## STEP: 3 複数行にわたる入力
count = gets.to_i
count.times do
    puts i = gets.to_i
end


## STEP: 5 半角スペース区切りでの出力
i = gets.to_i
array = ["paiza"] * i
puts array.join(' ')


## STEP: 6 改行区切りでの出力
count = gets.chomp.to_i
string = gets.split
string.each do |str|
    puts str
end
