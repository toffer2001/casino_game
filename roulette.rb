require_relative 'player'
require 'artii'
require 'colorize'

class Roulette
  attr_accessor :player
  
  def initialize(player)
  
  @player = player
  art = Artii::Base.new
  puts art.asciify('Roulette Time').colorize(:red)
  puts "Welcome #{@player.name} to Roulette - Lets Play!\n"
  user_choice
end
  
  def roulette_menu
    puts "Let's place a bet! Choose what you'd like to do"
    puts "1) Bet a number"
    puts "2) Bet red or black"
    puts "3) Bet odd or even"
    puts "4) Exit to Main menu"
    puts "5) Exit Casino"
    puts "6) Display Wallet"
    @choice = gets.chomp.to_i
  end

  def user_choice
    roulette_menu
    while @choice != 4
      case @choice
      when 1
        bet_num
        if @num_choice == @num ? winning_bet : losing_bet
        end

      when 2
        red_black
        if @color_choice == @color ? winning_bet : losing_bet
        end
      
      when 3
        bet_parity
        if @parity_choice == @parity ? winning_bet : losing_bet
        end
      
      when 4
        break # exit to main casino
      when 5
        puts "You're leaving the Casino! Come back soon!"
        exit
      when 6
        @player.printWallet
      end
    end
  end
   
  def bet_amount
    puts "How much do you want to bet?"
      @money = gets.chomp.to_i
  end

  def bet_num
    bet_amount
    @money_bet = @money
    puts "Choose a number between 0-36"
    @num_choice = gets.chomp.to_i
    spin
  end

  def red_black
    bet_amount
    @money_bet= @money
    puts "Choose red or black"
    @color_choice = gets.chomp.downcase
    spin
  end

  def bet_parity
    bet_amount
    @money_bet = @money
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

  def winning_bet
    puts "Congrats, you're a Winner!"
    @player.add_wallet(@money_bet)
    puts @player.printWallet
    roulette_menu        
  end

  def losing_bet
    puts "Sorry, you lost your bet."
    @player.deduct_wallet(@money_bet)
    puts @player.printWallet
    roulette_menu
  end
end
