require "csv"

type = 0
puts "じゃんけん..."
puts "1(グー)2(チョキ)3(パー)4(戦わない)"
myhand = gets.to_i
hand = rand(1..3)
houkou = 0
direction = 0

loop {
  if type == 0
    if myhand == 1 && hand == 1
       puts "----------------"
       puts "ホイ!"
       puts 'あなた:グーを出しました'
       puts '相手:グーを出しました'
       type = 1
       puts "----------------"
    elsif myhand == 1 && hand == 2
       puts "----------------"
       puts "ホイ!"
       puts 'あなた:グーを出しました'
       puts '相手:チョキを出しました'
       type = 2
       puts "----------------"
    elsif myhand == 1 && hand == 3
       puts "----------------"
       puts "ホイ!"
       puts 'あなた:グーを出しました'
       puts '相手:パーを出しました'
       type = 3
       puts "----------------"
    elsif myhand == 2 && hand == 1
       puts "----------------"
       puts "ホイ!"
       puts 'あなた:チョキを出しました'
       puts '相手:グーを出しました'
       type = 3
       puts "----------------"
    elsif myhand == 2 && hand == 2
       puts "----------------"
       puts "ホイ!"
       puts 'あなた:チョキを出しました'
       puts '相手:チョキを出しました'
       type = 1
       puts "----------------"
    elsif myhand == 2 && hand == 3
       puts "----------------"
       puts "ホイ!"
       puts 'あなた:チョキを出しました'
       puts '相手:パーを出しました'
       type = 2
       puts "----------------"
    elsif myhand == 3 && hand == 1
       puts "----------------"
       puts "ホイ!"
       puts 'あなた:パーを出しました'
       puts '相手:グーを出しました'
       type = 2
       puts "----------------"
    elsif myhand == 3 && hand == 2
       puts "----------------"
       puts "ホイ!"
       puts 'あなた:パーを出しました'
       puts '相手:チョキを出しました'
       type = 3
       puts "----------------"
    elsif myhand == 3 && hand == 3
       puts "----------------"
       puts "ホイ!"
       puts 'あなた:パーを出しました'
       puts '相手:パーを出しました'
       type = 1
       puts "----------------"
    elsif myhand == 4
       puts "じゃんけんを終了します"
       break
    else
       puts "1~4のどれかを入力してください"
       break
    end
  
  if type == 1
    puts "あいこで.."
    puts "1(グー)2(チョキ)3(パー)"
    myhand = gets.to_i
    hand = rand(1..3)
    type = 0
  end
    
  if type == 2
    puts "あっちむいて.."
    puts "1(上)2(下)3(左)4(右)"
    houkou = gets.to_i
    direction = rand(1..4)
    if houkou == 1 || houkou == 2 || houkou == 3 || houkou == 4
     type = 5
    else
     puts "1~4のどれかを入力してください"
     break
    end
  end
  
  if type == 3
    puts "あっちむいて.."
    puts "1(上)2(下)3(左)4(右)"
    houkou = gets.to_i
    direction = rand(1..4)
    if houkou == 1 || houkou == 2 || houkou == 3 || houkou == 4
     type = 6
    else
     puts "1~4のどれかを入力してください"
     break
    end
  end
  
  if type == 5
   if houkou == direction
    puts "----------------"
    puts "方向が合いました。貴方の勝ちです"
    puts "----------------"
    break
   elsif houkou != direction
    puts "----------------"
    puts "方向が合いませんでした。やり直しです"
    type = 0
    puts "----------------"
    puts "じゃんけん..."
    puts "1(グー)2(チョキ)3(パー)4(戦わない)"  
    myhand = gets.to_i
    hand = rand(1..3)
    if myhand == 4
      puts "じゃんけんを終了します"
      break
    end
   end
  end
  
  if type == 6
   if houkou == direction
    puts "----------------"
    puts "方向が合いました。貴方の負けです"
    puts "----------------"
    break
   elsif houkou != direction
    puts "----------------"
    puts "方向が合いませんでした。やり直しです"
    type = 0
    puts "----------------"
    puts "じゃんけん..."
    puts "1(グー)2(チョキ)3(パー)4(戦わない)"  
    myhand = gets.to_i
    hand = rand(1..3)
    if myhand == 4
      puts "じゃんけんを終了します"
      break
    end
   end
  end
  
else
  puts "例外処理"
  break
end

}
