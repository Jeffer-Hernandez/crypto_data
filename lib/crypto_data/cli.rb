# this is the guts of your CLI program
# you will puts phrases using the variables saved from the database in your "currency info" class
# the entire interface will be in this class

class CryptoData::CLI
    include CryptoData

    def call 
        puts "Welcome! Please enter the number currency for which you would like to know the Bitcoin exchange rate: "
        print_menu
        validate
        start
    end

    def start
        puts ""
        puts "Would you like to see another pair? Please answer Y or N: "
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

    def validate
        @input = gets.strip.to_i
        currency = CryptoData::Currency.find_by_id(@input)
        currency ? show_cur(currency): invalid_input
        # binding.pry
        # may not need to insert "currency" as argument in show_cur
    end 

    def show_cur(currency)
        # find a way to show the corresponding asset object attribute in brackets
        puts "Asset ID: #{currency.asset_id_quote}"
        puts "Time of request: #{currency.time}"
        puts "Rate of asset in Bitcoin: #{currency.rate}"

    end 

    def invalid_input
        puts "I dont understand that input, please try again!"
        print_menu
    end 


   

end
