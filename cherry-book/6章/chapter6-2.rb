##正規表現オブジェクトについて詳しく

#case文で正規表現を使う
text = '03-1234-5678'

case text
when /^\d{3}-\d{4}$/
  puts '郵便番号です'
when /^\d{4}\/\d{1,2}\/\d{1,2}$/
  puts '日付です'
when /^\d+-\d+-\d+$/
  puts '電話番号です'
end
#=> 電話番号です


##組み込み変数でマッチの結果を取得する($で始まる組み込み変数)

text = '私の誕生日は1992年9月23日です'

# =~やmatchメソッドを使うとマッチした結果が組み込み変数に代入される
text =~ /(\d+)年(\d+)月(\d+)日/

# MatchDataオブジェクトを取得する
$~ #=> #<MatchData "1992年9月23日" 1:"1992" 2:"9" 3:"23">

#マッチした部分全体を取得する
$& #=> "1992年9月23日"

# 1番目から3番目のキャプチャを取得する
$1 #=> "1992"
$2 #=> "9"
$3 #=> "23"

# 最後のキャプチャ文字列を取得する
$+ #=> "23"


## Regexp.last_matchでマッチの結果を取得する(=~演算子で最後にマッチした結果を取得する)
## $~よりも可読性は上がるが、matchメソッドの方が分かりやすい？

text = '私の誕生日は1992年9月23日です'

# =~演算子などを使うと、マッチした結果をRegexp.last_matchで取得できる
text =~ /(\d+)年(\d+)月(\d+)日/

# MatchDataオブジェクトを取得する
Regexp.last_match #=> #<MatchData "1992年9月23日" 1:"1992" 2:"9" 3:"23">

# マッチした部分全体を取得する
Regexp.last_match(0) #=> "1992年9月23日"

# 1番目から3番目のキャプチャを取得する
Regexp.last_match(1) #=> "1992"
Regexp.last_match(2) #=> "9"
Regexp.last_match(3) #=> "23"

# 最後のキャプチャを取得する
Regexp.last_match(-1) #=> "23"


##組み込み変数を書き換えないmatch?メソッド

#マッチすればtrueを返す
/\d{3}-\d{4}/.match?('123-4567') #=> true

#マッチしても組み込み変数やRegexp.last_matchを書き換えない
#(すでにどこかで=~やmatchを使っていた場合は、そのときに設定されて値になる)
$~                #=> nil
Regexp.last_match #=> nil
