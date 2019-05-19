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
    class Main 

      attr_accessor :wallet
      attr_reader :name

      def initialize
        @wallet = "".to_i
        @name = ''        
      end

      def self.add_wallet(amount)
        @wallet += amount
        #check for nil
        return @wallet
      end

      def self.deduct_wallet(amount)
        @wallet -= amount
        return @wallet
      end


      puts "Welcome to the DEVPoint Labs Casino!"
      puts "Please enter your name"
      name = gets.chomp
      
      puts "How much would you like to add to your wallet"
      @wallet = gets.chomp.to_i

      puts "Select Game"
      puts "1) Roulette"
      puts "2) War"
      puts "3) Check wallet balance"
      @game_input = gets.chomp

      case @game_input
        when "1"
          load 'roulette.rb'
        when "2"
          load 'war.rb'
        when "3"
          puts "$ #{@wallet}"
        end
      end

    jason = Main.new
    

    
