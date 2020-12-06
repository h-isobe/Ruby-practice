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
#rubyのzipメソッドは、配列の要素を引数の配列と結合して 新しい配列を生成し、行列を入れ替えた状態で値が帰ってくる。なお足りない要素はnilで返される



