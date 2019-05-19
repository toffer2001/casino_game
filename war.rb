class War
 def war_menu
   puts "Welcome to War"
   puts "Lets Play! select one of the following"
   puts "1) Draw Cards"
   puts "2) exit to main menu"
   puts "3) quit"
   @war_choice = gets.chomp
 end

   def draw
     puts "How Much Would You Like to Bet?"
     @war_bet = gets.to_i
     @player_hand = ['A', 2, 3, 4, 5, 6, 7, 8, 9, 'J', 'Q', 'K'].shuffle.first.to_i
     @dealer_hand = ['A', 2, 3, 4, 5, 6, 7, 8, 9, 'J', 'Q', 'K'].shuffle.first.to_i
     puts "#{@player_hand}"
     puts "#{@dealer_hand}"
     if @player_hand > @dealer_hand
       puts "Winner"
     else
       puts "LOSER!"
     end
   end

   def deal
   case @war_choice
   when "1"
     draw
     war_menu
   when "2"
    puts "Enter code to exit to main menu here"
   when "3"
    exit
   end
 end
 end

play = War.new
play.war_menu
play.deal