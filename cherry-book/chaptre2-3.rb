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



