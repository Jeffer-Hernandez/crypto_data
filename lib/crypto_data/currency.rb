# this class will save specific bits of information in variables to be used in the CLI class
# to puts specific phrases using these variables that has stored information from the database
# WE ARE JUST SAVING INFORMATION IN THIS CLASS

class CryptoData::Currency
    include CryptoData

   attr_accessor :asset_id, :asset_info

    @@all = []

    def initialize(attrs)
        set_int_id
        attrs_from_hash(attrs)
        save
    end

    def set_int_id 
        @int_id = @@all.length + 1
    end

    def attrs_from_hash(attrs)
        attrs.each do |k, v|
            binding.pry
            send("#{k}=", v)
        end
    end

    def save 
        @@all << self
    end

    def self.get_tickers
        CryptoData::GetCurrency.get_tickers
        all
    end

    def self.new_from_collection(tickers)
        tickers.each do |attrs|
            new(attrs)
        end 
    end

    def self.all
        get_tickers if @@all == []
        @@all
        binding.pry
    end

    def self.find_by_id(input)
        all.find{|s| s.int_id == input.to_i}
      
    end

end