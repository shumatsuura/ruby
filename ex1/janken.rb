
class Player
  def hand
    # コンソールを入力待ち状態にし、プレイヤーがコンソールから打ち込んだ値を出力する処理のメソッドの処理をこの中に作成する
    puts "数字を入力してください。"
    puts "0: グー"
    puts "1: チョキ"
    puts "2: パー"
    player_hand = gets.chomp.to_i
    return player_hand
  end
end

class Enemy
  def hand
    # グー、チョキ、パーの値をランダムに出力するメソッドの処理をこの中に作成する
    #enemy_hand = (0..2).to_a.shuffle.first.to_i
    enemy_hand = 1
    return enemy_hand
  end
end

class Janken
  def pon(player_hand, enemy_hand)
    hands = ["グー","チョキ","パー"]
    # プレイヤーが打ち込んだ値と、Enemyがランダムに出した値でじゃんけんをさせ、その結果をコンソール上に出力するメソッドをこの中に作成する
    # その際、あいこもしくはグー、チョキ、パー以外の値入力時には、もう一度ジャンケンをする
    # 相手がグー、チョキ、パーのうち、何を出したのかも表示させる
    if (player_hand == 0) or (player_hand == 1) or (player_hand == 2)
      if (player_hand - enemy_hand + 3) % 3 == 2
        puts "相手の手は#{hands[enemy_hand]}です。あなたの勝ちです。"
        return false
      elsif (player_hand - enemy_hand + 3) % 3 == 1
        puts "相手の手は#{hands[enemy_hand]}です。あなたの負けです。"
        return false
      elsif (player_hand - enemy_hand + 3) % 3 == 0
        puts "相手の手は#{hands[enemy_hand]}です。引き分けです。"
        puts "再度じゃんけんを行います。"
        return true
      end
    else
      puts "Error! 0から2で入力して下さい。"
      return true
    end
  end
end

player = Player.new
enemy = Enemy.new
janken = Janken.new

# 下記の記述で、ジャンケンメソッドが起動される
next_game = true
while next_game do
  next_game = janken.pon(player.hand, enemy.hand)
end

# ここに書かれているRubyの記述はあくまでヒントとして用意された雛形なので、書かれている記述に従わずに実装したいという場合は、自分の好きに実装して構わない。課題要件を満たし、コードの品質が一定の水準にあると判定されればどのような実装でも合格になる。
