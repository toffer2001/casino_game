require_relative 'player'
<<<<<<< HEAD
=======
require 'colorize'
>>>>>>> added comment

class War
attr_accessor :player

def initialize(player)
  @player = player
<<<<<<< HEAD
  puts "Welcome #{@player.name} to War - Lets Play!\n"
=======
  puts "Welcome #{@player.name} to War - Lets Play!\n".colorize(:blue)
>>>>>>> added comment
  user_choice
end

 def war_menu
   puts "\nSelect one of the following"
   puts "1) Draw Cards"
   puts "2) Return to casino"
   puts "3) Quit"
   puts "4) Display wallet"
   @war_choice = gets.chomp.to_i
 end

   def draw
     puts "How Much Would You Like to Bet?"
     @war_bet = gets.to_i

     if @player.check_if_enough(@war_bet) # check if enough money so player doesn't go into debt
      @player_hand = ['A', 2, 3, 4, 5, 6, 7, 8, 9, 'J', 'Q', 'K'].shuffle.first.to_i
      @dealer_hand = ['A', 2, 3, 4, 5, 6, 7, 8, 9, 'J', 'Q', 'K'].shuffle.first.to_i
      puts "Your card is a #{@player_hand}"
      puts "Dealer's card is #{@dealer_hand}"
      if @player_hand > @dealer_hand
        winning_bet
      else
        losing_bet
      end
     else
      puts "Sorry, you don't have enough money"
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

   def winning_bet
    puts "Congrats, you're a Winner!"
    @player.add_wallet(@war_bet)
    puts @player.printWallet
  end

  def losing_bet
    puts "Sorry, you lost your bet."
    @player.deduct_wallet(@war_bet)
    puts @player.printWallet
  end
 
<<<<<<< HEAD
end
=======
end
>>>>>>> added comment
