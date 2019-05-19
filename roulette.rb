require_relative 'player'

class Roulette
  attr_accessor :player
  
  def initialize(player)
  
  @player = player
  puts "Welcome #{@player.name} to Roulette - Lets Play!\n"
  roulette_menu
end
  
  def roulette_menu
    puts "Let's place a bet! Choose what you'd like to do"
    puts "1) Bet a number"
    puts "2) Bet red or black"
    puts "3) Bet odd or even"
    puts "4) Exit to Main menu"
    puts "5) Exit Casino"
    choice = gets.chomp.to_i
  end

    #add name from main to Greeting 
  def user_choice
    choice = roulette_menu
    while choice !=4
      
      case choice
      when 1
        bet_num
        if @num_choice == @num
          puts "Winner!"
          @player.add_wallet(@money_num)
          puts @player.printWallet
          roulette_menu
        else
          puts "LOSER!"
          @player.deduct_wallet(@money_num)
          puts @player.printWallet
          roulette_menu
        end
      
      when 2
        red_black
        if @color_choice == @color
          puts "Winner!"
          roulette_menu
        else 
          puts "LOSER!"
          roulette_menu
        end
      
        
      when 3
        bet_parity
        if @parity_choice == @parity
          puts "Winner!"
          roulette_menu
        else
          puts "LOSER!"
          roulette_menu
        end
      
      when 4
        break # exit to main casino
      when 5
        puts "You're leaving the Casino! Come back soon!"
        exit
      end
    end
  end
   

 

  def bet_amount
    puts "How much do you want to bet?"
      @money = gets.chomp.to_i
  end

  def bet_num
    bet_amount
    @money_num = @money
    puts "Choose a number between 0-36"
    @num_choice = gets.chomp.to_i
    spin
  end

  def red_black
    bet_amount
    @money_color= @money
    puts "Choose red or black"
    @color_choice = gets.chomp.downcase
    spin
  end

  def bet_parity
    bet_amount
    @money_parity = @money
    puts "Choose odd or even"
    @parity_choice = gets.chomp.downcase
    spin
  end

  def spin
    @num = rand(36)
    if @num % 2 == 0
      @color = "red"
      @parity = "even"
    else
      @color = "black"
      @parity = "odd"
    end
    puts "You spinned:#{@num} #{@color} #{@parity}"  
  end 
end


#number, parity, color

# get number, 
# get bet

# bet color or parity?
# No, spin 
# else get color
#   get bet

# parity?
# No spin, 
# get parity
# get bet
# spin
