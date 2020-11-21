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


## %記法でシンボルやシンボルの配列を作成する

#シンボルを作成する場合は%sを使う
# !を区切り文字に使う
%s!ruby is fun! #=> :"ruby is fun"

# ()を区切り文字に使う
%s(ruby is fun) #=> :"ruby is fun"

#シンボルの配列を作成する場合は、%iを使うことができる。空白文字が要素の区切りになる
%i(apple orange melon) #=> [:apple, :orange, :melon]


##シンボルと文字列の関係

#別物なので互換性はない
string = 'apple'
symbol = :apple

string == symbol #=> false
string + symbol  #=> TypeError (no implicit conversion of Symbol into String)

#ただし、to_symメソッド(エイリアスメソッドはintern)を使うと、文字列をシンボルに変換できる
string = 'apple'
symbol = ':apple'
string.to_sym           #=> :apple
string.to_sym == symbol #=> true

#反対に、to_sメソッド(エイリアスメソッドはid2name)を使うと、シンボルを文字列に変換できる
string = 'apple'
symbol = ':apple'
symbol.to_s           #=> "apple"
string == symbol.to_s #=> true
string + symbol.to_s  #=> "appleapple"
