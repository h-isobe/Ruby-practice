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
