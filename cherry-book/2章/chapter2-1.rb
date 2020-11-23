#フォーマットを指定して文字列を作成
sprintf('%0.3f', 1.2) #=> "1.200"

#数値を文字列に変換
123.to_s #=> "123"

#配列を連結して1つの文字列
[10,20,30].join #=> "102030"

# *演算子を使って文字列を繰り返す
'Hi' * 10 #=> "HiHiHiHiHiHiHiHiHiHi"

#数値クラスのあれこれ
10.class #=> integer
1.5.class #=> float

#有理数リテラル
r = 2/3r
r       #=> (2/3)
r.class #=> Rational

#複素数リテラル(0.5iが複素数リテラル)
c = '0.3-0.5i'
c =     #=> (0.3-0.5i)
c.class #=> Complex

#&&や||の戻り値と評価を終了するタイミング
1 && 2 && 3 #=> 3
1 && nil && 3 #=> nil
1 && false & 3 #=> false

nill || false #=> false
false || nill #=> nil
nill || false || 2 || 3 #=> 2

#優先順位が低いand、or、not
#&&は||よりも優先順位が高い
t1 = true
t2 = true
f1 = false

t1 || t2 && f1 #=> true
t1 or t2 and f1 #=> false

#unless文(下記のif文とunless文は同じ処理)
status = 'error'
if status != 'ok'
  '何か異常があります'
end
#=> "何か異常があります"

status = 'error'
unless status == 'ok'
  '何か異常があります'
end
#=> "何か異常があります"

#elseを使って偽でなかった場合の処理(つまり真だった場合)の処理
status = 'ok'
unless status == 'ok'
  '何か異常があります'
else
  '正常です'
end
#=> "正常です"

#unlessはifと同様、戻り値を直接変数に代入したり、修飾子として文の後ろに置いたりできる
status = 'error'
message =
  unless status == 'ok'
    '何か異常があります'
  else
    '正常です'
  end
message #=> '何か異常があります'

#unlessを修飾子として使う
'何か異常があります' unless status == 'ok'
#=> "何か異常があります"

#case文(複数の条件を指定する場合は、elsifを重ねるよりシンプルに書ける)
country = 'itary'
case country
when 'japan'
  'こんにちは'
when 'us'
  'Hello'
when 'itary'
  'ciao'
else
  '???'
end
#=> "ciao"

#条件演算子(三項演算子) =>シンプルなif文ならスッキリ書ける。複雑な条件文だと可読性が悪くなる場合もある。
n = 11
message = n > 10 ? '10より大きい' : '10以下'
message #=> "10より大きい"

