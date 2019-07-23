class Player
  def hand
    puts"0:gao"
    puts"1:choki"
    puts"2:par"
    player_input = gets.to_i 
    while player_input > 2 or player_input < 0 do
      puts"enter the number in range of 0-2" 
      player_input = gets.to_i 
    end 
      player_input
  end 
end
class Enemy
  def hand
    enemy_input=rand(0..2)
  end
end
class Janken
  def pon(player_hand, enemy_hand)
    difference=(player_hand.to_i-enemy_hand.to_i)+3
    if (difference%3==2)
      puts"win"
    elsif(difference%3==1)
      puts"lose"
    elsif(difference%3==0)
      puts" it is drow please!!! play again"  
      load('sample.rb')
    end
  end
end
player = Player.new 
enemy = Enemy.new
janken = Janken.new
janken.pon(player.hand, enemy.hand)
  

