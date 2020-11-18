#デフォルト値付きの引数

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

