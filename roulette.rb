require_relative 'player'

class Roulette < Main
  attr_accessor :wallet
  
  
  def roulette_menu
    puts "Welcome to Roulette!"
    puts "Let's place a bet! Choose what you'd like to do"
    puts "1) Bet a number"
    puts "2) Bet red or black"
    puts "3) Bet odd or even"
    puts "4) Exit to Main menu"
    puts "5) Exit Casino"
    #add name from main to Greeting 
    choice = gets.chomp
    case choice
    when "1"
      bet_num
      if @num_choice == @num
        puts "Winner!"
        Main.add_wallet(@money_num)
        puts @wallet
        roulette_menu
      else
        puts "LOSER!"
        Main.deduct_wallet(@money_num)
        puts @wallet
        roulette_menu
      end
    
      
    when "2"
      red_black
      if @color_choice == @color
        puts "Winner!"
        roulette_menu
      else 
        puts "LOSER!"
        roulette_menu
      end
    
      
    when "3"
      bet_parity
      if @parity_choice == @parity
        puts "Winner!"
        roulette_menu
      else
        puts "LOSER!"
        roulette_menu
      end
    

    when "4"
      #Insert code to go to menu
    

    when "5"
      puts "You're leaving the Casino! Come back soon!"
      exit
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

# m = Main.new
roll = Roulette.new
roll.roulette_menu


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
