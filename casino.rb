# menu to interact with
  #Games to choose from
  #Set up wallet

#wallet for player
  #method to increase and decrease 

#roulette
  # black and red -odd are black
  # numbers 0-36
  # odd or even

  #War
    #highest card wins
    #set values for J, Q K, A

    # QUit program option
    #Return to Main Menu Option
require 'pry'
require_relative 'player'
require_relative 'war'
require_relative 'roulette'


def start_casino
  puts "Welcome to the DEVPoint Labs Casino!"
end


def casino_menu
  puts "Select Game"
  puts "0) Create new customer"
  puts "1) Roulette"
  puts "2) War"
  puts "3) Check wallet balance"
  puts "4) Exit casino"
  gets.chomp.to_i
end

start_casino

while @game_input != 4
@game_input = casino_menu

  case @game_input
  when 0
    puts "Please enter your name"
    @player_name = gets.chomp

    puts "How much would you like to start from your wallet"
    starting_amount = gets.chomp.to_i
    @player = Player.new(@player_name, starting_amount)
  when 1
    Roulette.new(@player)
  when 2
    War.new(@player)
  when 3
    puts @player.printWallet
  when 4
    puts "Goodbye"
    break
  else
    puts "Not a valid entry, try again"
  end
end


