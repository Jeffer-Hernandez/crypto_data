# this class will save specific bits of information in variables to be used in the CLI class
# to puts specific phrases using these variables that has stored information from the database
# WE ARE JUST SAVING INFORMATION IN THIS CLASS

class CryptoData::Currency
    include CryptoData


   

    @@all = []

    def initialize(keys, values)
      
        
        @keys
        @values
        @btc_
        btc_assigning_value(keys, values)
        # binding.pry
        # set_int_id
        # asset_id_from_ticker(ticker)
        save
    end

    

    def btc_assigning_value(keys, values)
        btc_array = []
        keys[0..15].each do |attrs|
            btc_array << attrs
        end

        btc_values = []
        values[0..15].each do |value|
            btc_values << value
        end
        
        btc_return_values(btc_values, btc_array)
        
        

        # do this ^^^^ for the first 10 currencies. present list of currencies on cli class
        # each currency with its own assinging value method
        # return value for each method is this last puts ^^^
        # then just call the method in the print_info method on CLI class for each respective currency
        # find the pertinent lines/arrays in the JSON file and change them for each method/currency
    end

    def btc_return_values(btc_values, btc_array)
        finished_array = []
        btc_array.each.with_index do |value, index|
           finished_array << "#{index+1}. #{value}: #{btc_values[index]}"
            
        end
        CryptoData::CLI.new.call(finished_array)
    end

    

    def save
        @@all << self
        
    end


    def self.all
        @@all
        # binding.pry
    end

end