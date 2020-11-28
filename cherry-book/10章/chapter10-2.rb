## Procオブジェクトの基礎(Procクラスはブロックをオブジェクト化するためのクラス)

# Procクラスのインスタンス(Procオブジェクト)を作成する場合は、Proc.newにブロックを渡す

# "Hello"という文字列を返すProcオブジェクトを作成する
hello_proc = Proc.new do
  'Hello!'
end

# do...endの代わりに{}を使っても良い
hello_proc = Proc.new{ 'Hello!' }

# 作成したProcオブジェクトを実行したい場合はcallメソッドを使う必要がある
hello_proc      #=> #<Proc:0x00007f96b78d8588
hello_proc.call #=> "Hello!"

# 実行時に引数を利用するProcオブジェクトも定義できる。
add_proc = Proc.new{ |a,b| a + b }
add_proc.call(10, 20) #=> 30


## Procオブジェクトをブロックの代わりに渡す

def greeting(&block)
  puts 'おはよう'
  text = block.call('こんにちは')
  puts text
  puts 'こんばんは'
end
# 上記の「引数のblockはメソッド実行時に紐づけられたブロックである」をもう一言付け加えると、
# 「引数のblockはProcオブジェクトである」と言うこともできる
# &block → ブロック → Proc

# Procオブジェクトを作成し、それをブロックの代わりにgreetingメソッドに渡す
repeat_proc = Proc.new{ |text| text * 2 }
greeting(&repeat_proc)
#=> おはよう
#   こんにちはこんにちは
#   こんばんは
