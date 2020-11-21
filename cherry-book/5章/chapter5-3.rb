##よく使われるイディオム

##(1) 条件分岐で変数に代入 /&.演算子

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

#上記のif currency = find_currency(country)は、人によっては==と書き間違ったのでは？と勘違いされる可能性もある。
# &.演算子(ぼっち演算子)を使うと、メソッドを呼び出されたオブジェクトがnilでない場合はその結果を、nilの場合はnilを返す
def show_currency(country)
  currency = find_currency(country)
  currency&.upcase
end

##(2) ||=を使った自己代入

#下記は、「変数limitが偽(nilまたはfalse)であれば、10を代入する(それ以外、すなわち真の場合はlimitの値をそのまま使う)」の意味になる
limit = nil
limit ||= 10
limit #=> 10

limit = 20
limit ||= 10
limit #=> 20

# n + 1がn = n + 1と展開できることと同じ
limit = limit || 10


##(3) !!を使った真偽値の型変換

def user_exists?
  #データベースからユーザーを探す(なければnil)
  user = find_user
  if user
    #userが見つかったのでtrue
    true
  else
    #userが見つかれなかったのでfalse
    false
  end
end

#上記を次のようにコンパクトに書くことができる
def user_exists?
  !!find_user
end

# !は否定の演算子。!Aと書いてAが真であればfalseを返す。!!にするとそれをもう一度反転させる。「trueまたはfalseに変換するため」。
!!true  #=> true
!true   #=> false
!!false #=> false
!false  #=> true