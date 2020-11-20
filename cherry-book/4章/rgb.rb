#例題:RGB変換プログラムを作成

#10進数の数値を16進数に変換した文字列を返すメソッド
def to_hex(r, g, b)
  [r, g, b].inject('#') do |hex, n|
    hex + n.to_s(16).rjust(2, '0')
  end
end

#16進数の文字列を10進数の数値3つに変換するメソッド
def to_ints(hex)
  r = hex[1..2]
  g = hex[3..4]
  b = hex[5..6]
  [r, g, b].map do |s|
    s.hex
  end
end
