# this is the guts of your CLI program
# you will puts phrases using the variables saved from the database in your "currency info" class
# the entire interface will be in this class

class CryptoData::CLI
    include CryptoData

    def call 
        puts "Welcome! Please enter the number currency for which you would like to know the Bitcoin exchange rate: "
        print_menu
        
        validate(input)
        start
    end


    # def initialize(ticker_menu, rate)

    #     @ticker_menu
    #     @rate
    
    #     puts "Welcome to Bitcoin Exchange! Where you can find the price of a Bitcoin in any currency."
    #     print_menu(ticker_menu, rate)
    #     start
    # end

    def start
        # puts ""
        # puts "Would you like to see another pair? Enter Y or N"
        
        puts "Would you like to see another pair?"
        sec_input = gets.strip.downcase
        if sec_input == "y"
        print_menu
        validate
        start
        elsif sec_input == "n"
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
        CryptoData::Currency.all.each do |cur|
            puts "#{cur.int_id}. #{cur.asset_id_quote}"
            # binding.pry
        end
        
    end

    def validate(input)
        currency = CryptoData::Currency.find_by_id(input)
        currency ? show_cur(input): invalid_input
        binding.pry
    end 

    def show_cur(input)
        # binding.pry
        
        
            
        
        # currency["asset_id_quote"].each{|li| puts li}
    end 

    

    def invalid_input
        puts "I dont understand that input, please try again!"
        print_menu
    end 


   

end

    # def print_info(input,rate)
    #     puts "You would pay #{rate[input]} in that currency for 1 Bitcoin."

    #     start
    # end
