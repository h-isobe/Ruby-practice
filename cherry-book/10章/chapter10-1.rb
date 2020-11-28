## yieldを使ってブロックの処理を呼び出す

def greeting
  puts 'おはよう'
  # ここでブロックの処理を呼び出す
  yield
  puts 'こんばんは'
end

greeting do
  puts 'こんにちは'
end
#=> おはよう
#   こんばんは
#   こんにちは

# ブロックなしでyieldで呼び出そうとするとエラー
greeting 
#=> おはよう
#   LocalJumpError (no block given (yield))

# これを解決するにはblock_given?メソッドを使う。ブロックが渡されている場合にtrueを返す
def greeting
  puts 'おはよう'
  # ブロックの有無を確認してからyieldを呼び出す
  if block_given?
    yield
  end
  puts 'こんばんは'
end

greeting
#=> おはよう
#   こんばんは

greeting do
  puts 'こんにちは'
end
#=> おはよう
#=> こんにちは
#=> こんばんは


# yieldはブロックに引数を渡したり、ブロックの戻り値を受け取ったりできる
def greeting
  puts 'おはよう'
  text = yield 'こんにちは'
  puts text
  puts 'こんばんは'
end

greeting do |text|
  # yieldで渡された文字列("こんにちは")を2回繰り返す
  puts text * 2
end
#=> おはよう
#   こんにちはこんにちは
#   こんばんは


# yieldとブロックでやりとりする引数は個数の過不足に寛容
# yield引数が2個の場合
def greeting
  puts 'おはよう'
  # 2個の引数をブロックに渡す
  text = yield 'こんにちは', 12345
  puts text
  puts 'こんばんは'
end

greeting do |text|
  # ブロック引数が1つであれば、2つめの引数は無視される
  puts text * 2
end
#=> おはよう
#   こんにちはこんにちは
#   こんばんは


# yield引数が1個の場合
def greeting
  puts 'おはよう'
  # 1個の引数をブロックに渡す
  text = yield 'こんにちは'
  puts text
  puts 'こんばんは'
end

greeting do |text,other|
  # ブロック引数が2つであれば、2つめの引数はnilになる
  puts text * 2 + other.inspect
end
#=> おはよう
#   こんにちはこんにちはnil
#   こんばんは


## ブロックを引数として明示的に受け取る
## ブロックを引数として受け取る場合は、引数の前に&をつける。実行する場合はcallメソッドを使う

# ブロックをメソッドの引数として受け取る
def greeting(&block) # 引数名は自由
  puts 'おはよう'
  # callメソッドを使ってブロックを実行する
  text = block.call('こんにちは')
  puts text 
  puts 'こんばんは'
end

greeting do |text|
  puts text * 2
end
#=> おはよう
#   こんにちはこんにちは
#   こんばんは


# ブロックを引数で受け取る場合でも、yieldやblock_given?メソッドは使用可能
def greeting(&block)
  puts 'おはよう'
  if block_given?
    text = yield 'こんにちは'
    puts text
  end
  puts 'こんばんは'
end
# 上記のままではブロックを引数で受け取るメリットがない
# メリットは、greetingメソッドのブロック引数を他のメソッドに渡せること

# 日本語版のgreetingメソッド。ここではブロックを受け取るだけ。
def greeting_ja(&block)
  texts = ['おはよう', 'こんにちは', 'こんばんは']
  greeting_common(texts, &block)
end

# 英語版のgreetingメソッド。ここではブロックを受け取るだけ。
def greeting_en(&block)
  texts = ['good morning', 'hello', 'good evening']
  greeting_common(texts, &block)
end

# 出力処理用の共通メソッド
def greeting_common(texts, &block)
  puts texts[0]
  puts block.call(texts[1])
  puts texts[2]
end

# 日本語版のgreetingメソッドを呼び出す
greeting_ja do |text|
  text * 2
end
#=> おはよう
#   こんにちはこんにちは
#   こんばんは

# 英語版のgreetingメソッドを呼び出す
greeting_en do |text|
  text.upcase
end
#=> good morning
#   HELLO
#   good evening
