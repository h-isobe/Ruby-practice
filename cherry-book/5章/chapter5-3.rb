##よく使われるイディオム

#(1) 条件分岐で変数に代入 /&.演算子

#国名に応じて通貨を返す(該当する通過がなければnil)
def find_currency(country)
  currencies = { japan: 'yen', us: 'dollar', india: 'rupee' }
  currencies[country]
end

#指定された国の通貨を大文字にして返す
def show_currency(country)
  #条件分岐内で直接変数に代入してしまう(値が取得できれば真、できなければ偽)
  if currency = find_currency(country)
    currency.upcase
  end
end

show_currency(:japan)  #=> "YEN"
show_currency(:brazil) #=> nil

#上記のif currency = find_currency(country)は、人によっては==と書き間違ったのでは？と勘違いの可能性もある。
# &.演算子(ぼっち演算子)を使うと、メソッドを呼び出されたオブジェクトがnilでない場合はその結果を、nilの場合はnilを返す
def show_currency(country)
  currency = find_currency(country)
  currency&.upcase
end
