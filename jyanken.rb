require "csv"
puts "じゃんけん..."
puts "0(グー)1(チョキ) 2(パー)3(戦わない)"
jyanken_type = gets.to_i

if jyanken_type == 0
   puts "----------------"
   puts "ホイ!"
   puts 'あなた:グーを出しました'
elsif jyanken_type == 1
   puts "----------------"
   puts "ホイ!"
   puts 'あなた:チョキを出しました'
elsif jyanken_type == 2
   puts "----------------"
   puts "ホイ!"
   puts 'あなた:パーを出しました'
elsif jyanken_type == 3
   puts "じゃんけんを終了します"
else
   puts "0~3のどれかを入力してください"
end