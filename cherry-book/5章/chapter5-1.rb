#ハッシュ色々

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
