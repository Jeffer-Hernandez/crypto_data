# this class will save specific bits of information in variables to be used in the CLI class
# to puts specific phrases using these variables that has stored information from the database
# WE ARE JUST SAVING INFORMATION IN THIS CLASS

class CryptoData::Currency
    include CryptoData

    attr_accessor :ticker_symbol, :rate

    @@all = []

    def initialize(ticker_symbol, rate)
        @ticker_symbol
        @rate        
        
       set_ticker_int_id(ticker_symbol, rate)
       
        
    end

    def set_ticker_int_id(ticker_symbol, rate) 
        ticker_menu = []
        ticker_symbol.each.with_index do |symbol, i|
          ticker_menu <<  "#{i+1}. #{symbol}"
          
        end
        CryptoData::CLI.new(ticker_menu, rate)
        
    end

    

    

    
end

