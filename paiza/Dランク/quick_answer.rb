## メモ用

#【早解2】1日1万歩
d, s = gets.split.map(&:to_i)
if d * 1000 / s >= 100
  puts "yes"
else 
  puts "no"
end


#【早解2】正n角形の内角
n = gets.to_i
a = 180 * (n - 2)
puts a / n


#【早解3】うなりの周波数 
f1,f2 = gets.split.map(&:to_i)
if f1 <= f2
    puts f2 - f1
else f2 <= f1 
    puts f1 - f2
end
# または
n = gets.split.map(&:to_i)
puts (n[0] - n[1]).abc


#【早解4】たぶん...
puts gets.gsub(/, maybe./, '!!') 


#【早解5】アンダーライン
a = []
a << gets
a << "^" * a[0].length
puts a


#【早解6】式の計算
a = gets.split(" ").map(&:to_i).inject(:+)
puts a


#【早解7】鉛筆の濃さ
a = gets.to_i 
b = a - 1
pencil_type = ["6B", "5B", "4B", "3B", "2B", "B", "HB", "F", "H", "2H", "3H", "4H", "5H", "6H", "7H", "8H", "9H"]
puts pencil_type[b]


#【早解8】靴のサイズ
size = gets.to_f
a = size - 18.0, size - 18.5
puts a.join(" ")


#【早解9】30人31脚
human_legs = gets.to_i + 1
puts human_legs


#【早解10】回数分同じ処理を繰り返す
input_line = gets.to_i
a = ["#", "."].map { |n| n * 10 }
input_line.times do
    puts a
end


