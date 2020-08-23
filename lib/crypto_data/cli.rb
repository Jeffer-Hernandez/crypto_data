# this is the guts of your CLI program
# you will puts phrases using the variables saved from the database in your "currency info" class
# the entire interface will be in this class

class CryptoData::CLI
    include CryptoData

    def initialize(ticker_menu, rate)

        @ticker_menu
        @rate
    
        puts "Welcome to Bitcoin Exchange! Where you can find the price of a Bitcoin in any currency."
        print_menu(ticker_menu, rate)
        start
    end

    def start
        puts ""
        puts "Would you like to see another pair? Enter Y or N"

        input = gets.strip.downcase
        if input == "y"
        print_menu(@input)
        elsif input == "n"
        puts ""
        puts "Thank you! Have a great day!"
        exit
        else
        puts ""
        puts "I don't understand that answer."
        exit
        end
    end

    def print_menu(ticker_menu, rate)
    
        puts "Please enter the number of the currency would you like the Bitcoin exchange rate for?"
        
        ticker_menu.each do |list|
            puts "#{list}"
        end
    
        @input = gets.strip.to_i-1
        print_info(@input,rate)
        
    end

    def print_info(input,rate)
        puts "You would pay #{rate[input]} in that currency for 1 Bitcoin."

        start
    end

end