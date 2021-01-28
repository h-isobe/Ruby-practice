puts "ジャンケンゲーム"
puts "---------------------------"
puts "0:グー, 1:チョキ, 2:パー から選択してください"
choice = ["グー", "チョキ", "パー"]

user_hand = gets.chomp.to_i
puts "あなたは" + choice[user_hand] + "を出しました。"

cp_hand = rand(0..2)
puts "相手は" + choice[cp_hand] + "を出しました。"

def geme(user_hand, cp_hand)
  if user_hand == 0 && cp_hand == 1
    return "win"
  elsif user_hand == 1 && cp_hand == 2
    return "win"
  elsif user_hand == 2 && cp_hand == 0
    return "win"
  elsif user_hand == cp_hand 
    return "draw"
  else 
    return "lose"
  end
end

result = geme(user_hand, cp_hand)

def win_or_loss(result)
  if result == "win"
    puts "あなたの勝ちです。"
  elsif result == "draw"
    puts "あいこです。"
  else 
    puts "あなたの負けです。"
  end
end

win_or_loss(result)
