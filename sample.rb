class Player
    def hand
      # Process of the following method is created in this.
      # Puts the console into an input wait state, and outputs the value the player types from the console
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
      # Create processing of the method that outputs the value of goo, choki, par at random in this
      enemy_input=rand(0..2)
      enemy_input
    end
   end
   class Janken
    def pon(player_hand, enemy_hand)
      # Create a method in it that will cause the player to hit the value you typed in and the one that Enemy randomly gave out, and output the result on the console
      # At that time, when you enter values other than draw or Goo, Choki, Par, do another Janken.
      # Show what the other party gave out of Goo, Choki, Par
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
   # The Janken method is invoked by the following description
  
   # The Ruby description written here is a template prepared as a hint.
   
   # If you want to implement without following the written description, you can implement it as you like.
   
   # Any implementation will pass if it meets the requirem

