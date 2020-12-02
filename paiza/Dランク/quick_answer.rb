## メモ用

#【早解1】1日1万歩
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


#【早解11】縦書き
side = gets.split("")
side.each do |vertical|
    puts vertical
end


#【早解12】山の英語表記
puts "Mt. " + gets


#【早解13】満員電車の乗車率
passengers = gets.to_f
capacity = passengers / 140 * 100
puts capacity.floor.to_s + "%"


#【早解14】0から9までのカウンタ



#【早解15】気温の変化
y, t = gets.split.map(&:to_i)

if t - y > 0
  print "+", t - y
elsif t - y < 0
  puts t - y
else
  puts t - y
end


#【早解16】アルファベットの穴の数
a = gets
zero = ["C", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "S", "T", "U", "V", "W", "X", "Y", "Z"]
one = ["A", "D", "O", "P", "Q", "R"]
two = ["B"]

if zero.include?(a)
  puts 0
elsif one.include?(a)
  puts 1
else two.include?(a)
  puts 2
end


#【早解17】騒音レベル
l = gets.to_i

if l < 30
  puts "quiet"
elsif l < 50
  puts "normal"
elsif l < 70
  puts "noisy"
else 70 <= l
  puts "very noisy"
end


#【早解18】TGIF
a = gets
if a == "Friday"
  puts 'TGIF'
else 
  puts "Still #{a}"
end


#【早解19】可聴領域
f = gets.to_i

if 20 <= f && f <= 15000
  puts 'yes'
elsif 15000 < f && f <= 20000
  puts 'not sure'
else 
  puts 'no'
end


#【早解20】駄菓子の大人買い
possession_money = gets.to_i
puts possession_money / 10