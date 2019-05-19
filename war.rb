require_relative 'player'

class War
attr_accessor :player

def initialize(player)
  @player = player
  puts "Welcome #{@player.name} to War - Lets Play!\n"
  user_choice
end

 def war_menu
   puts "\nSelect one of the following"
   puts "1) Draw Cards"
   puts "2) Return to casino"
   puts "3) Quit"
   puts "4) Print wallet"
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

   def user_choice
    while @war_choice != 2
      @war_choice = war_menu
      case @war_choice
      when 1
        draw
        user_choice
      when 2
        break # return to main casino
      when 3
        exit # exit program/casino
      when 4
        @player.printWallet
      end
    end
 end
 
end
