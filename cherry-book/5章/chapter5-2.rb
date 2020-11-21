##シンボルについてもっと詳しく

##シンボルを作成する様々な方法
:apple
:Aplle
:ruby_is_fun
:okay?
:welcome!
:_secret
:$dollaar #=> グローバル変数
:@at_mark #=> インスタンス変数

#以下のようなシンボルはエラーになる
:12345       #=> SyntaxError
:ruby-is-fun #=> NameError
:ruby is fun #=> SyntaxError
:()          #=> SyntaxError
#ただし、シングルクオートで囲むとシンボルとして有効になる
:'12345'       #=> :"12345"
:'ruby-is-fun' #=> :"ruby-is-fun"
:'ruby is fun' #=> :"ruby is fun"
:'()'          #=> :"()"

#シングルクオートの代わりにダブルクオートを使うと、文字列と同じく式展開が使える
name = 'Alice'
:"#{name.upcase}" #=> :ALICE

# "文字列: 値" の形式で書くと、キーがシンボルになる
hash = { 'abc': 123} #=> { :abc=>123 }

