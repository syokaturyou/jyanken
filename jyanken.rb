require "csv"
puts "じゃんけん..."
puts "1(グー)2(チョキ)3(パー)4(戦わない)"
myhand = gets.to_i
hand = rand(1..3)
# puts hand
if myhand == 1 && hand == 1
   puts "----------------"
   puts "ホイ!"
   puts 'あなた:グーを出しました'
   puts '相手:グーを出しました'
   puts "引き分けです"
   puts "----------------"
elsif myhand == 1 && hand == 2
   puts "----------------"
   puts "ホイ!"
   puts 'あなた:グーを出しました'
   puts '相手:チョキを出しました'
   puts "貴方の勝ちです!"
   puts "----------------"
elsif myhand == 1 && hand == 3
   puts "----------------"
   puts "ホイ!"
   puts 'あなた:グーを出しました'
   puts '相手:パーを出しました'
   puts "貴方の負けです"
   puts "----------------"
elsif myhand == 2 && hand == 1
   puts "----------------"
   puts "ホイ!"
   puts 'あなた:チョキを出しました'
   puts '相手:グーを出しました'
   puts "貴方の負けです"
   puts "----------------"
elsif myhand == 2 && hand == 2
   puts "----------------"
   puts "ホイ!"
   puts 'あなた:チョキを出しました'
   puts '相手:チョキを出しました'
   puts "引き分けです"
   puts "----------------"
elsif myhand == 2 && hand == 3
   puts "----------------"
   puts "ホイ!"
   puts 'あなた:チョキを出しました'
   puts '相手:パーを出しました'
   puts "貴方の勝ちです"
   puts "----------------"
elsif myhand == 3 && hand == 1
   puts "----------------"
   puts "ホイ!"
   puts 'あなた:パーを出しました'
   puts '相手:グーを出しました'
   puts "貴方の勝ちです"
   puts "----------------"
elsif myhand == 3 && hand == 2
   puts "----------------"
   puts "ホイ!"
   puts 'あなた:パーを出しました'
   puts '相手:チョキを出しました'
   puts "貴方の負けです"
   puts "----------------"
elsif myhand == 3 && hand == 3
   puts "----------------"
   puts "ホイ!"
   puts 'あなた:パーを出しました'
   puts '相手:パーを出しました'
   puts "引き分けです"
   puts "----------------"
elsif myhand == 4
   puts "じゃんけんを終了します"
else
   puts "1~4のどれかを入力してください"
end