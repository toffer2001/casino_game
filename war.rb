require_relative 'player'

def war(player)
  puts "Welcome to War - Lets Play!\n"
  @player = player
  deal
end

 def war_menu
   puts "\nSelect one of the following"
   puts "1) Draw Cards"
   puts "2) Return to main casino"
   puts "3) quit"
   puts "4) print wallet"
   @war_choice = gets.chomp.to_i
 end

   def draw
     puts "How Much Would You Like to Bet?"
     @war_bet = gets.to_i
     @player_hand = ['A', 2, 3, 4, 5, 6, 7, 8, 9, 'J', 'Q', 'K'].shuffle.first.to_i
     @dealer_hand = ['A', 2, 3, 4, 5, 6, 7, 8, 9, 'J', 'Q', 'K'].shuffle.first.to_i
     puts "Your card is a #{@player_hand}"
     puts "Dealer's card is #{@dealer_hand}"
     if @player_hand > @dealer_hand
       puts "Winner"
       @player.add_wallet(@war_bet)
       puts @wallet

     else
       puts "LOSER!"
       @player.deduct_wallet(@war_bet)
        puts @wallet
     end
   end

   def deal
    

    while @war_choice != 2
      @war_choice = war_menu
      case @war_choice
      when 1
        draw
        deal
      when 2
        require_relative 'casino'
      when 3
        exit
      when 4
        @player.printWallet
      end
    end
 end
 

