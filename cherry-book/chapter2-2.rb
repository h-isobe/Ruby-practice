#引数に過不足があるとエラーになる
def greeting(country)
  if country == 'japan'
    'こんにちは'
  else
    'hello'
  end
end

#引数が少ない
greeting 
#=> ArgumentError...(given 0, expected 1)

#引数がちょうど
greeting('us')
#=> 'hello'

#引数が多い
greeting('us', 'japan')
#=> ArfumentError...(given 2, expected 1)


#デフォルト値付きの引数(デフォルトで引数を設定すると引数なしでもエラーにならない)
#引数なしの場合はcountryに'japan'を設定する
def greeting(country = 'japan')
  if country == 'japan'
    'こんにちは'
  else
    'hello'
  end  
end

greeting       #=> "こんにちは"
greeting('us') #=> "hello"

#システム日時や他のメソッドの戻り値をデフォルト値に指定する
def foo(time = Time.now, message = bar)
  puts "time: #{time}, message: #{message}"
end

def bar
  "BAR"
end

foo #=> time: ...... + 900, message: BAR


# ?で終わるメソッド(?や!は真偽値を返すメソッド)
#空文字列であればture、そうでなければfalse
''.empty?    #=> true
'abc'.empty? #=> false

#引数の文字列が含まれていればture、そうでなければfalse
'watch'.include?('at') #=> true
'watch'.include?('in') #=> false

#奇数ならtrue、偶数ならfalse
1.odd? #=> true
2.odd? #=> false

#偶数ならtrue、奇数ならfalse
1.even? #=> false
2.even? #=> true

#オブジェクトがnilであればtrue、そうでなければfalse
nil.nil?   #=> true
'abc'.nil? #=> false
1.nil?     #=> false

#3の倍数ならtrue、それ以外はfalseを返す
def multiple_of_three?(n)
  n % 3 == 0
end
multiple_of_three?(4) #=> false
multiple_of_three?(5) #=> false
multiple_of_three?(6) #=> true


# !で終わるメソッド(慣習として「使用する際は注意が必要」という意味を持つ)
a = 'ruby'

#upcaseだと変数aの値は変化しない
a.upcase #=> "RUBY"
a        #=> 'ruby'

#upcase!だと変数aの値も大文字に変わる
#upcase!メソッドのように、呼び出したオブジェクトの状態を変更してしまうメソッドのことを「破壊的メソッド」と呼ぶ
a.upcase! #=> "RUBY"
a         #=> "RUBY"