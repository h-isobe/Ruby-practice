## 1:rubyで配列のユニーク要素だけ出力する
array = [1, 2, 3, 1, 2, 1, 2, 6, 5, "ruby","python","ruby"]
puts array.uniq


## 2:rubyで配列のnill要素を削除
array = ["ruby", nil, "java", nil, nil, "python"]
puts array.delete(nil)
# または
puts array.compact


## 3:rubyで２次元配列の値を操作する
# [["php", "バージョン3"], ["java", "バージョン2"], ["ruby", "バージョン1"], ["python", "バージョン0.1"]]に変換する
array = [["php", "java", "ruby", "python"],["バージョン3","バージョン2","バージョン1","バージョン0.1"]]
puts array.transpose


## 4:rubyでzipメソッドを利用した場合の動作
array = ["ruby", "python", "java"]
num = [1, 2, 3]
p array.zip(num)
#=> [["ruby", 1], ["python", 2], ["java", 3]]
# rubyのzipメソッドは、配列の要素を引数の配列と結合して 新しい配列を生成し、行列を入れ替えた状態で値が帰ってくる。なお足りない要素はnilで返される


## 5:rubyでproductメソッドを利用した場合の動作
array1 = ["プログラミング言語"]
array2 = ["ruby", "python", "java"]
p sets = array1.product(array2)
#=> [["プログラミング言語", "ruby"], ["プログラミング言語", "python"], ["プログラミング言語", "java"]]
# productメソッドは、レシーバの配列の要素と引数で与えられた配列の要素の全ての組み合わせて値を返してくれる。


## 6:rubyで配列内の要素をソートする
array = [5,6,1,3,4]
p array.sort #=> [1, 3, 4, 5, 6]
puts array.sort #=> putsにすると配列でなくなり、1行ずつ出力される


## 7:rubyの配列内の要素をカウントする(["イシカワ","トウキョウ","アオモリ"]の配列内の要素数を出力して下さい。)
array = ["イシカワ","トウキョウ","アオモリ"]
puts array.count


## 8:rubyの配列内の要素を取得し、新しい配列で返す
array = ["足立区","港区","豊島区","江東区"]
p array.take(3) #=> ["足立区", "港区", "豊島区"] (putsだと配列でなくなる)
# takeメソッドは、オブジェクトの先頭から引数の要素数を配列として返す


## 9:rubyの配列内の要素を大文字で表示する
p ["python", "ruby", "java"].map{ |n| n.upcase }


## 10:rubyの配列へ繰り返し処理を実行する
array = ['牛丼', '豚丼', 'カツ丼']
array.each_with_index do |array, i|
  puts "#{i + 1}" + ":" + "#{array}"
end


## 11:rubyの配列で真の値を取得する(3で割り切れる値だけを抽出)
array = [20, 21, 22, 23, 24, 25, 26].select { |s| s % 3 == 0}
p array #=> [21, 24] (putsだと配列でなくなる)


## 12:rubyの配列で偽の値を取得する(11の問題で、3で割り切れる値以外を抽出)
array = [20, 21, 22, 23, 24, 25, 26].select { |s| s % 3 != 0}
p array #=> [20, 22, 23, 25, 26]
# または
p array.reject { |s| s % 3 == 0 } #=> [20, 22, 23, 25, 26]