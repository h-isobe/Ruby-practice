#ハッシュについてもっと詳しく

#keys(ハッシュのキーを配列として返す)
currencies = { japan: 'yen', us: 'dollar', india: 'rupee' }
currencies.keys #=> [:japan, :us, :india]

#values(ハッシュの値を配列として返す)
currencies = { japan: 'yen', us: 'dollar', india: 'rupee' }
currencies.values #=> ["yen", "dollar", "rupee"]

#has_key?/key?/include?/member?(has_key?はハッシュの中に指定したキーが存在するか確認メソッド。他はエイリアスメソッド。)
currencies = { japan: 'yen', us: 'dollar', india: 'rupee' }
currencies.has_key?(:japan) #=> true
currencies.has_key?(:italy) #=> false

# **でハッシュを展開させる
h = { us: 'dollor', india: 'rupee' }
{ japan: 'yen', **h } #=> {:japan=>"yen", :us=>"dollor", :india=>"rupee"}

# **の代わりにmergeメソッドでも同じ効果が得られる
{ japan: 'yen'}.merge(h) #=> {:japan=>"yen", :us=>"dollor", :india=>"rupee"}


#ハッシュの構文エラー
def buy_burger(menu, options = {})
  puts options
end
#第1引数にハッシュの{}が来る場合は、()を省略できない
buy_burger({'drink' => true, 'potato' => false}, 'fish')

#第2引数以降にハッシュが来る場合は、()を省略してもエラーが起こらない
buy_burger 'fish', 'drink' => 'true', 'potato' => 'false'


#ハッシュから配列へ、配列からハッシュへ

#to_aメソッドでキーと値が1つの配列に入り、それが複数並んだ配列になって返る
currencies = { japan: 'yen', us: 'dollar', india: 'rupee' }
currencies.to_a #=> [[:japan, "yen"], [:us, "dollar"], [:india, "rupee"]]

#to_hメソッドで配列をハッシュに変換できる。ただし、配列側がキーと値の組み合わせで1つの配列に入り、要素の分だけ配列として並んでいること。
array = [[:japan, "yen"],[:us, "dollar"][:india: "rupee"]]
array.to_h #=> {:japan=>"yen", :us=>"dollar", :india=>"rupee"}
