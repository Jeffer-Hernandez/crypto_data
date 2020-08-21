# this class will save specific bits of information in variables to be used in the CLI class
# to puts specific phrases using these variables that has stored information from the database
# WE ARE JUST SAVING INFORMATION IN THIS CLASS

class CryptoData::Currency
    include CryptoData

   attr_accessor :name, :type_is_crypto, :data_start, :data_end, :data_quote_star, :data_quote_end, :data_orderbook_start, 
   :data_orderbook_end, :data_trade_start, :data_trade_end, :data_symbols_count, :volume_1hrs_usd, :volume_1day_usd, :volume_1mth_usd, 
   :id_icon 
   

    @@all = []

    def initialize(ticker)
        @@btc = ticker[0]
        @@usd = ticker[1]
        @@pln = ticker[2] 
        @@eur = ticker[3]
        @@cny = ticker[4]
        @@jpy = ticker[5]
        @@aud = ticker[6]
        @@chf = ticker[7]
        @@sek = ticker[8]
        @@gbp = ticker[9]

        

        # binding.pry
        # set_int_id
        # asset_id_from_ticker(ticker)
        save
    end

    def self.btc
        @asset_id = @@btc["asset_id"]
        name = @@btc["name"]
        type_is_crypto = @@btc["type_is_crypto"]
            if type_is_crypto == 0
                type_is_crypto = "No"
            else 
                type_is_crypto = "Yes"
            end
        data_start = @@btc["data_start"]
        data_end = @@btc["name"]
        data_quote_start = @@btc["data_quote_start"]
        data_quote_end = @@btc["data_quote_end"]
        data_orderbook_start = @@btc["data_orderbook_start"]
        data_orderbook_end = @@btc["data_orderbook_end"]
        data_trade_start = @@btc["data_trade_start"]
        data_trade_end = @@btc["data_trade_end"]
        data_symbols_count = @@btc["data_symbols_count"]
        volume_1hrs_usd = @@btc["volume_1hrs_usd"]
        volume_1day_usd = @@btc["volume_1day_usd"]
        volume_1mth_usd = @@btc["volume_1mth_usd"]
        id_icon = @@btc["id_icon"]
        
    end

    def self.usd
        asset_id = @@usd["asset_id"]
        name = @@usd["name"]
        type_is_crypto = @@usd["type_is_crypto"]
            if type_is_crypto == 0
                type_is_crypto = "No"
            else 
                type_is_crypto = "Yes"
            end
        data_start = @@usd["data_start"]
        data_end = @@usd["name"]
        data_quote_start = @@usd["data_quote_start"]
        data_quote_end = @@usd["data_quote_end"]
        data_orderbook_start = @@usd["data_orderbook_start"]
        data_orderbook_end = @@usd["data_orderbook_end"]
        data_trade_start = @@usd["data_trade_start"]
        data_trade_end = @@usd["data_trade_end"]
        data_symbols_count = @@usd["data_symbols_count"]
        volume_1hrs_usd = @@usd["volume_1hrs_usd"]
        volume_1day_usd = @@usd["volume_1day_usd"]
        volume_1mth_usd = @@usd["volume_1mth_usd"]
        id_icon = @@usd["id_icon"]
        
    end

    def self.pln
        asset_id = @@pln["asset_id"]
        name = @@pln["name"]
        type_is_crypto = @@btc["type_is_crypto"]
            if type_is_crypto == 0
                type_is_crypto = "No"
            else 
                type_is_crypto = "Yes"
            end
        data_start = @@pln["data_start"]
        data_end = @@pln["name"]
        data_quote_start = @@pln["data_quote_start"]
        data_quote_end = @@pln["data_quote_end"]
        data_orderbook_start = @@pln["data_orderbook_start"]
        data_orderbook_end = @@pln["data_orderbook_end"]
        data_trade_start = @@pln["data_trade_start"]
        data_trade_end = @@pln["data_trade_end"]
        data_symbols_count = @@pln["data_symbols_count"]
        volume_1hrs_usd = @@pln["volume_1hrs_usd"]
        volume_1day_usd = @@pln["volume_1day_usd"]
        volume_1mth_usd = @@pln["volume_1mth_usd"]
        id_icon = @@pln["id_icon"]
        
    end

    def self.eur
        asset_id = @@eur["asset_id"]
        name = @@eur["name"]
        type_is_crypto = @@eur["type_is_crypto"]
            if type_is_crypto == 0
                type_is_crypto = "No"
            else 
                type_is_crypto = "Yes"
            end
        data_start = @@eur["data_start"]
        data_end = @@eur["name"]
        data_quote_start = @@eur["data_quote_start"]
        data_quote_end = @@eur["data_quote_end"]
        data_orderbook_start = @@eur["data_orderbook_start"]
        data_orderbook_end = @@eur["data_orderbook_end"]
        data_trade_start = @@eur["data_trade_start"]
        data_trade_end = @@eur["data_trade_end"]
        data_symbols_count = @@eur["data_symbols_count"]
        volume_1hrs_usd = @@eur["volume_1hrs_usd"]
        volume_1day_usd = @@eur["volume_1day_usd"]
        volume_1mth_usd = @@eur["volume_1mth_usd"]
        id_icon = @@eur["id_icon"]
        
    end

    def self.cny
        asset_id = @@cny["asset_id"]
        name = @@cny["name"]
        type_is_crypto = @@cny["type_is_crypto"]
            if type_is_crypto == 0
                type_is_crypto = "No"
            else 
                type_is_crypto = "Yes"
            end
        data_start = @@cny["data_start"]
        data_end = @@cny["name"]
        data_quote_start = @@cny["data_quote_start"]
        data_quote_end = @@cny["data_quote_end"]
        data_orderbook_start = @@cny["data_orderbook_start"]
        data_orderbook_end = @@cny["data_orderbook_end"]
        data_trade_start = @@cny["data_trade_start"]
        data_trade_end = @@cny["data_trade_end"]
        data_symbols_count = @@cny["data_symbols_count"]
        volume_1hrs_usd = @@cny["volume_1hrs_usd"]
        volume_1day_usd = @@cny["volume_1day_usd"]
        volume_1mth_usd = @@cny["volume_1mth_usd"]
        id_icon = @@cny["id_icon"]
        
    end

    def self.jpy
        asset_id = @@jpy["asset_id"]
        name = @@jpy["name"]
        type_is_crypto = @@jpy["type_is_crypto"]
            if type_is_crypto == 0
                type_is_crypto = "No"
            else 
                type_is_crypto = "Yes"
            end
        data_start = @@jpy["data_start"]
        data_end = @@jpy["name"]
        data_quote_start = @@jpy["data_quote_start"]
        data_quote_end = @@jpy["data_quote_end"]
        data_orderbook_start = @@jpy["data_orderbook_start"]
        data_orderbook_end = @@jpy["data_orderbook_end"]
        data_trade_start = @@jpy["data_trade_start"]
        data_trade_end = @@jpy["data_trade_end"]
        data_symbols_count = @@jpy["data_symbols_count"]
        volume_1hrs_usd = @@jpy["volume_1hrs_usd"]
        volume_1day_usd = @@jpy["volume_1day_usd"]
        volume_1mth_usd = @@jpy["volume_1mth_usd"]
        id_icon = @@jpy["id_icon"]
        
    end

    def self.aud
        asset_id = @@aud["asset_id"]
        name = @@aud["name"]
        type_is_crypto = @@aud["type_is_crypto"]
            if type_is_crypto == 0
                type_is_crypto = "No"
            else 
                type_is_crypto = "Yes"
            end
        data_start = @@aud["data_start"]
        data_end = @@aud["name"]
        data_quote_start = @@aud["data_quote_start"]
        data_quote_end = @@aud["data_quote_end"]
        data_orderbook_start = @@aud["data_orderbook_start"]
        data_orderbook_end = @@aud["data_orderbook_end"]
        data_trade_start = @@aud["data_trade_start"]
        data_trade_end = @@aud["data_trade_end"]
        data_symbols_count = @@aud["data_symbols_count"]
        volume_1hrs_usd = @@aud["volume_1hrs_usd"]
        volume_1day_usd = @@aud["volume_1day_usd"]
        volume_1mth_usd = @@aud["volume_1mth_usd"]
        id_icon = @@aud["id_icon"]
        
    end
    
    def self.chf
        asset_id = @@chf["asset_id"]
        name = @@chf["name"]
        type_is_crypto = @@chf["type_is_crypto"]
            if type_is_crypto == 0
                type_is_crypto = "No"
            else 
                type_is_crypto = "Yes"
            end
        data_start = @@chf["data_start"]
        data_end = @@chf["name"]
        data_quote_start = @@chf["data_quote_start"]
        data_quote_end = @@chf["data_quote_end"]
        data_orderbook_start = @@chf["data_orderbook_start"]
        data_orderbook_end = @@chf["data_orderbook_end"]
        data_trade_start = @@chf["data_trade_start"]
        data_trade_end = @@chf["data_trade_end"]
        data_symbols_count = @@chf["data_symbols_count"]
        volume_1hrs_usd = @@chf["volume_1hrs_usd"]
        volume_1day_usd = @@chf["volume_1day_usd"]
        volume_1mth_usd = @@chf["volume_1mth_usd"]
        id_icon = @@chf["id_icon"]
        
    end

    def self.sek
        asset_id = @@sek["asset_id"]
        name = @@sek["name"]
        type_is_crypto = @@sek["type_is_crypto"]
            if type_is_crypto == 0
                type_is_crypto = "No"
            else 
                type_is_crypto = "Yes"
            end
        data_start = @@sek["data_start"]
        data_end = @@sek["name"]
        data_quote_start = @@sek["data_quote_start"]
        data_quote_end = @@sek["data_quote_end"]
        data_orderbook_start = @@sek["data_orderbook_start"]
        data_orderbook_end = @@sek["data_orderbook_end"]
        data_trade_start = @@sek["data_trade_start"]
        data_trade_end = @@sek["data_trade_end"]
        data_symbols_count = @@sek["data_symbols_count"]
        volume_1hrs_usd = @@sek["volume_1hrs_usd"]
        volume_1day_usd = @@sek["volume_1day_usd"]
        volume_1mth_usd = @@sek["volume_1mth_usd"]
        id_icon = @@sek["id_icon"]
        
    end

    def self.gbp
        asset_id = @@gbp["asset_id"]
        name = @@gbp["name"]
        type_is_crypto = @@gbp["type_is_crypto"]
            if type_is_crypto == 0
                type_is_crypto = "No"
            else 
                type_is_crypto = "Yes"
            end
        data_start = @@gbp["data_start"]
        data_end = @@gbp["name"]
        data_quote_start = @@gbp["data_quote_start"]
        data_quote_end = @@gbp["data_quote_end"]
        data_orderbook_start = @@gbp["data_orderbook_start"]
        data_orderbook_end = @@gbp["data_orderbook_end"]
        data_trade_start = @@gbp["data_trade_start"]
        data_trade_end = @@gbp["data_trade_end"]
        data_symbols_count = @@gbp["data_symbols_count"]
        volume_1hrs_usd = @@gbp["volume_1hrs_usd"]
        volume_1day_usd = @@gbp["volume_1day_usd"]
        volume_1mth_usd = @@gbp["volume_1mth_usd"]
        id_icon = @@gbp["id_icon"]
        
    end

    def save 
        @@all << self
        # binding.pry
    end

    

    def self.new_from_collection(ticker)
        # binding.pry
        self.new(ticker)
        
    end

    def self.all
        @@all
        # binding.pry
    end

end