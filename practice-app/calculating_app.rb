def title
  puts "------------------------------------------"
  puts "計算アプリです。"
  puts "モードを選択してください。"
  puts "1:足算, 2:引き算, 3:掛け算, 4:割算, 5:終了"
  puts "------------------------------------------"
end

title
## モードを選択
x = gets.chomp

## 計算結果出力後、繰り返し表示
while x == "1" || x == "2" || x == "3" || x == "4"
  if x == "1"
    puts "足算が選択されました。"
    puts "数字を入力してください。"
    print "1つ目: "
    a = gets.chomp
    print "2つ目: "
    b = gets.chomp
    answer = a.to_i + b.to_i
  elsif x == "2"
    puts "引き算が選択されました。"
    puts "数字を入力してください。"
    print "1つ目: "
    a = gets.chomp
    print "2つ目: "
    b = gets.chomp
    answer = a.to_i - b.to_i
  elsif x == "3"
    puts "掛け算が選択されました。"
    puts "数字を入力してください。"
    print "1つ目: "
    a = gets.chomp
    print "2つ目: "
    b = gets.chomp
    answer = a.to_i * b.to_i
  elsif x == "4"
    puts "割算が選択されました。"
    puts "数字を入力してください。"
    print "1つ目: "
    a = gets.chomp
    print "2つ目: "
    b = gets.chomp
    answer = a.to_i / b.to_i
  end

  puts  "結果: #{answer}"

  title
  x = gets.chomp

end
puts  "お疲れ様でした。"
