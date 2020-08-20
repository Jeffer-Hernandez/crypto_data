# this is the guts of your CLI program
# you will puts phrases using the variables saved from the database in your "currency info" class
# the entire interface will be in this class

class CryptoData::CLI

    def call
        print_menu
        start
    end

    def start
        puts ""
        puts "Which currency pair information would you like to see?"
        input = gets.strip.to_i


        currency = CryptoData::Currency.find(input.to_i)

        print_info(currency)

        puts ""
        puts "Would you like to see another pair? Enter Y or N"

        input = gets.strip.downcase
        if input == "y"
        start
        elsif input == "n"
        puts ""
        puts "Thank you! Have a great day!"
        exit
        else
        puts ""
        puts "I don't understand that answer."
        start
        end
    end

    def print_menu
        puts "Hello! Welcome to Crypto Trade, where you can find up to the minute information on your favorite cryptocurrency"
        # puts the menu.. menu will consist of the different cryptocurrency pairs available in the api info as a numbered list
        # ex. btcusd, btceth, btcltc, ethusd

        
    end

    def print_info(currency)

        # psuedo code, have not named variables because i have not extracted infor from API yet.

        puts "symbol #{currency_info.symbol}"
        puts "price #{currency_info.price}"
        puts "high #{currency_info.high}"
        puts "low #{currency_info.low}"
        puts "volume #{currency_info.volume}"
        print_menu
    end



end