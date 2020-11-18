#エイリアスメソッド(同じメソッドに複数の名前が付いている場合がある)
#lengthもsizeも、どちらも文字数を返す
'hello'.length #=> 5
'hello'.size   #=> 5

#参照の概念を理解する
#Rubyの変数にはオブジェクトそのものではなく、オブジェクトへの参照が格納されている。
#変数がどのオブジェクトを参照しているかはobject_idメソッドを使うとわかる。

#aとbは同じ文字列だが、オブジェクトとしては別物(値は毎回変わる)
a = 'hello'
b = 'hello'
a.object_id #=> 180
b.object_id #=> 200

#cにbを代入する。cとbはどちらも同じオブジェクト
c = b
c.object_id #=> 200

#メソッドの引数にcを渡す。引数として受け取ったdは、cと同じオブジェクト
def m(d)
  d.object_id
end
m(c)        #=> 200

#equal?メソッドを使って同じオブジェクトかどうか確認しても良い(trueなら同じオブジェクト)
a.equal?(b) #=> true
b.equal?(c) #=> true
c.equal?(b) #=> true
c.equal?(d) #=> NameError (undefined local variable or method `d' for main:Object) 


#同じオブジェクトを参照している場合、オブジェクトの状態が変更されると、変更がそのまま各変数に影響する
#bとcは同じオブジェクト、aは異なるオブジェクト
a = 'hello'
b = 'hello'
c = b

#渡された文字列を破壊的に大文字に変換するメソッドを定義
def m!(d)
  d.upcase!
end
#cにm！メソッドを適用する
m!(c)

#b、cはいずれも大文字になる
b #=> "HELLO"
c #=> "HELLO"

#aは別のオブジェクトなので大文字にならない
a #=> "hello"


#require(組込みライブラリでない標準ライブラリやgemは明示的にそのライブラリを読み込む必要がある)
#require ライブラリ名

#Dateクラスは組込みライブラリではない標準ライブラリなので、そのままでは使用できない
Date.today #=> NameError (uninitialized constant Date)

#dateライブラリを読み込むとDateクラスが使える
require 'date'
Date.today #=> #<Date: 2020-11-18 ((2459172j,0s,0n),+0s,2299161j)>

