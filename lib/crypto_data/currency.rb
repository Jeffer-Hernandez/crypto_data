# this class will save specific bits of information in variables to be used in the CLI class
# to puts specific phrases using these variables that has stored information from the database
# WE ARE JUST SAVING INFORMATION IN THIS CLASS

# Currency is being passed 2 arrays and those are the attributes of the Currency class
# we aren't dealing with individual currency objects, or instances OF the Currency class
# Dalia's advice ^^^

class CryptoData::Currency
    include CryptoData

    attr_accessor :int_id, :time, :asset_id_quote, :rate

    

    @@all = []

  
    def initialize(currency)
        set_int_id
        attrs_from_hash(currency)
        @@all << self
    end

    def attrs_from_hash(currency)
        currency.each do |line|
            line.each do |k, v|
                send("#{k}=", v)
            end
        end
        
    end
    
    def set_int_id 
        @int_id = @@all.length + 1
    end

    
    def self.fetch_data
        CryptoData::GetCurrency.new.fetch_data
        all
        
    end
    
    def self.all
        fetch_data if @@all == []
        @@all
        # binding.pry
    end
    
    
    
    def self.find_by_id(input)
        all.find {|s| s.int_id == input.to_i}
        # binding.pry
    end           

end

