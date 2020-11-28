## Procオブジェクトの基礎(Procクラスはブロックをオブジェクト化するためのクラス)

# Procクラスのインスタンス(Procオブジェクト)を作成する場合は、Proc.newにブロックを渡す

# "Hello"という文字列を返すProcオブジェクトを作成する
hello_proc = Proc.new do
  'Hello!'
end

# do...endの代わりに{}を使っても良い
hello_proc = Proc.new { 'Hello!' }

# 作成したProcオブジェクトを実行したい場合はcallメソッドを使う必要がある
hello_proc      #=> #<Proc:0x00007f96b78d8588
hello_proc.call #=> "Hello!"

# 実行時に引数を利用するProcオブジェクトも定義できる。
add_proc = Proc.new { |a,b| a + b }
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
repeat_proc = Proc.new { |text| text * 2 }
greeting(&repeat_proc)
#=> おはよう
#   こんにちはこんにちは
#   こんばんは


## Procオブジェクトを普通の引数として渡す

# ブロックでなく、1個のProcオブジェクトを引数として受け取る(&を付けない)
def greeting(arrange_proc)
  puts 'おはよう'
  text = arrange_proc.call('こんにちは')
  puts text
  puts 'こんばんは'
end

# Procオブジェクトを普通の引数としてgreetingメソッドに渡す(&を付けない)
repeat_proc = Proc.new { |text| text * 2 }
greeting(repeat_proc)
#=> おはよう
#   こんにちはこんにちは
#   こんばんは


# 3種類のProcオブジェクトを受け取り、それぞれの挨拶文字に適用するgreetingメソッド
def greeting(proc_1, proc_2, proc_3)
  puts proc_1.call('おはよう')
  puts proc_2.call('こんにちは')
  puts proc_3.call('こんばんは')
end

shuffle_proc = Proc.new { |text| text.chars.shuffle.join }
repeat_proc = Proc.new { |text| text * 2 }
question_proc = Proc.new { |text| "#{text}?" }

greeting(shuffle_proc, repeat_proc, question_proc)
#=> はうおよ
#   こんにちはこんにちは
#   こんばんは?


## Proc.newとラムダの違い

# Procオブジェクトの作成の4つの方法
# Proc.newまたはProcメソッドでProcオブジェクトを作成
Proc.new { |a, b| a + b }
Proc { |a, b| a + b }

# ->構文またはlambaメソッドでProcオブジェクトを作成する
->(a, b) { a + b } # -> ラムダリテラル(アロー演算子とも呼ばれる)
lamba { |a, b| a + b }

# Proc.newとラムダの違い(引数の扱い)
# Proc.newの作成と実行の場合
add_proc = Proc.new { |a, b| a + b }
add_proc.call(10, 20) #=> 30

# ラムダの作成と実行の場合
add_proc = -> (a, b) { a + b }
add_proc.call(10, 20) #=> 30

# 引数の扱い方は変わらないが、数で変わる
# Proc.newの場合（引数がnilでもエラーが起きないようにto_iメソッドを使う）
add_proc = Proc.new { |a, b| a.to_i + b.to_i }
# Proc.newは引数が1つまたは3つでも呼び出しが可能
add_proc.call(10)          #=> 10
add_proc.call(10, 20, 100) #=> 30

# ラムダの場合
add_proc = -> (a, b) { a.to_i + b.to_i }
# ラムダは個数について厳密。引数がちょうど2個でないとエラーになる
add_proc.call(10)         #=> ArgumentError (wrong number of arguments (given 1, expected 2))
add_proc.call(10, 20, 30) #=> ArgumentError (wrong number of arguments (given 3, expected 2))


## Proc.newかラムダかを判断するlambda?メソッド

# Procクラスのインスタンスがどちらで作成されたかを判断したい場合にlambdaメソッドを使う
# Proc.newの場合
add_proc = Proc.new { |a, b| a + b }
add_proc.class   #=> Proc
add_proc.lambda? #=> false

# ラムダの場合
add_proc = -> (a, b) { a + b}
add_proc.class   #=> Proc
add_proc.lambda? #=> true