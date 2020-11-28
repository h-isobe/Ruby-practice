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
