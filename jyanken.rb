require "csv"
type = 0 # 条件分岐用に初期値0を定義
puts "じゃんけん..."
puts "1(グー)2(チョキ)3(パー)4(戦わない)"
myhand = gets.to_i
partnerhand = rand(1..3)

loop {
  if type == 0
    if myhand == 1 && partnerhand == 1
       puts "----------------"
       puts "ホイ!"
       puts 'あなた:グーを出しました'
       puts '相手:グーを出しました'
       type = 1
       puts "----------------"
    elsif myhand == 1 && partnerhand == 2
       puts "----------------"
       puts "ホイ!"
       puts 'あなた:グーを出しました'
       puts '相手:チョキを出しました'
       type = 2
       puts "----------------"
    elsif myhand == 1 && partnerhand == 3
       puts "----------------"
       puts "ホイ!"
       puts 'あなた:グーを出しました'
       puts '相手:パーを出しました'
       type = 3
       puts "----------------"
    elsif myhand == 2 && partnerhand == 1
       puts "----------------"
       puts "ホイ!"
       puts 'あなた:チョキを出しました'
       puts '相手:グーを出しました'
       type = 3
       puts "----------------"
    elsif myhand == 2 && partnerhand == 2
       puts "----------------"
       puts "ホイ!"
       puts 'あなた:チョキを出しました'
       puts '相手:チョキを出しました'
       type = 1
       puts "----------------"
    elsif myhand == 2 && partnerhand == 3
       puts "----------------"
       puts "ホイ!"
       puts 'あなた:チョキを出しました'
       puts '相手:パーを出しました'
       type = 2
       puts "----------------"
    elsif myhand == 3 && partnerhand == 1
       puts "----------------"
       puts "ホイ!"
       puts 'あなた:パーを出しました'
       puts '相手:グーを出しました'
       type = 2
       puts "----------------"
    elsif myhand == 3 && partnerhand == 2
       puts "----------------"
       puts "ホイ!"
       puts 'あなた:パーを出しました'
       puts '相手:チョキを出しました'
       type = 3
       puts "----------------"
    elsif myhand == 3 && partnerhand == 3
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
  end
  
  if type == 1
    puts "あいこで.."
    puts "1(グー)2(チョキ)3(パー)"
    myhand = gets.to_i
    partnerhand = rand(1..3)
    type = 0
  end
    
  if type == 2
    puts "じゃんけんに勝ちました。指さす方向を決めましょう"
    puts "あっちむいて.."
    puts "1(上)2(下)3(左)4(右)"
    mydirection = gets.to_i
    partnerdirection = rand(1..4)
    if mydirection == 1 || mydirection == 2 || mydirection == 3 || mydirection == 4
     type = 5
    else
     puts "1~4のどれかを入力してください"
     break
    end
  end
  
  if type == 3
    puts "じゃんけんに勝ちました。顔を向ける方向を決めましょう"
    puts "あっちむいて.."
    puts "1(上)2(下)3(左)4(右)"
    mydirection = gets.to_i
    partnerdirection = rand(1..4)
    if mydirection == 1 || mydirection == 2 || mydirection == 3 || mydirection == 4
     type = 6
    else
     puts "1~4のどれかを入力してください"
     break
    end
  end
  
  if type == 5
   if mydirection == partnerdirection
    puts "----------------"
    puts "ホイ！"
    puts "方向が合いました。貴方の勝ちです!"
    puts "----------------"
    break
   elsif mydirection != partnerdirection
    puts "----------------"
    puts "ホイ！"
    puts "方向が合いませんでした。やり直しです"
    type = 0
    puts "----------------"
    puts "じゃんけん..."
    puts "1(グー)2(チョキ)3(パー)4(戦わない)"  
    myhand = gets.to_i
    partnerhand = rand(1..3)
    if myhand == 4
      puts "じゃんけんを終了します"
      break
    end
   end
  end
  
  if type == 6
   if mydirection == partnerdirection
    puts "----------------"
    puts "ホイ！"
    puts "方向が合いました。貴方の負けです.."
    puts "----------------"
    break
   elsif mydirection != partnerdirection
    puts "----------------"
    puts "ホイ！"
    puts "方向が合いませんでした。やり直しです"
    type = 0
    puts "----------------"
    puts "じゃんけん..."
    puts "1(グー)2(チョキ)3(パー)4(戦わない)"  
    myhand = gets.to_i
    partnerhand = rand(1..3)
    if myhand == 4
      puts "じゃんけんを終了します"
      break
    end
   end
  end
}
