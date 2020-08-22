require 'rubygems'
require 'net/http'
require 'open-uri'
require 'json'
require 'pry'

# require "../crypto_data"


class CryptoData::GetCurrency
    include CryptoData  

    def fetch_data
        # binding.pry
        url = URI("https://rest.coinapi.io/v1/assets")
        
        http = Net::HTTP.new(url.host, url.port)
        http.use_ssl = true
        request = Net::HTTP::Get.new(url)
        request["X-CoinAPI-Key"] = "1ABF7FFA-CF66-4C94-B5CC-DF2BB2676878"
        response = http.request(request)
        
        # all api data is below in response.body. now being returned by fetch_data
        data = response.body
        ticker = JSON.parse(data)
        keys= []
        values=[]


        ticker.each do |btc| 
            btc.each do |key, value|
                keys << key
                values << value
            end
        end

        CryptoData::Currency.new(keys, values)

                

           

            
    end
end


























                        # if key == "asset_id"
                #     asset_id = value 
                # elsif
                #     key == "name"
                #     name = value
                # elsif
                #     key == "type_is_crypto"
                #     type_is_crypto = value
                # elsif
                #     key == "data_start"
                #     data_start = value
                # elsif
                #     key == "data_end"
                #     data_end = value
                # elsif
                #     key == "data_quote_start"
                #     data_quote_start = value
                # elsif
                #     key == "data_quote_end"
                #     data_quote_end = value
                # elsif
                #     key == "data_orderbook_start"
                #     data_orderbook_start = value
                # elsif
                #     key == "data_orderbook_end"
                #     data_orderbook_end = value
                # elsif
                #     key == "data_trade_start"
                #     data_trade_start = value
                # elsif
                #     key == "data_trade_end"
                #     data_trade_end = value
                # elsif
                #     key == "data_symbols_count"
                #     data_symbols_count = value
                # elsif
                #     key == "volume_1hrs_usd"
                #     volume_1hrs_usd = value
                # elsif
                #     key == "volume_1day_usd"
                #     volume_1day_usd = value
                # elsif
                #     key == "volume_1mth_usd"
                #     volume_1mth_usd = value
                # elsif
                #     key == "id_icon"
                #     id_icon = value
                # else
                #     key = key
                #     value = value
                # end 

        
        # asset_id = ticker["asset_id"]
        # name = ticker["name"]
        # type_is_crypto = ticker["type_is_crypto"]
        # data_start = ticker["data_start"]
        # data_end = ticker["data_end"]
        # data_quote_start = ticker["data_quote_start"]
        # data_quote_end = ticker["data_quote_end"]
        # data_orderbook_start = ticker["data_orderbook_start"]
        # data_orderbook_end = ticker["data_orderbook_end"]
        # data_trade_start = ticker["data_trade_start"]
        # data_trade_end = ticker["data_trade_end"]
        # data_symbols_count = ticker["data_symbols_count"]
        # volume_1hrs_usd = ticker["volume_1hrs_usd"]
        # volume_1day_usd = ticker["volume_1day_usd"]
        # volume_1mth_usd = ticker["volume_1mth_usd"]
        # id_icon = ticker["id_icon"]
        # binding.pry  
        # CryptoData::Currency.new(asset_id, name, type_is_crypto, data_start, data_end, data_quote_start, data_quote_end, 
        # data_orderbook_start, data_orderbook_end, data_trade_start, data_trade_end, data_symbols_count, volume_1hrs_usd,
        # volume_1day_usd, volume_1mth_usd, id_icon) 
# def symbol
    #     # we use the JSON library to parse the API response into nicely formatted JSON
    #       ticker = JSON.parse(self.fetch_data)
    #       binding.pry
    #       ticker.collect do |currency|
    #         currency["asset_id"] 
    #         # binding.pry 
    #     end
    # end

    # currency = self.fetch_data
    # puts currency.symbol.uniq
 
         
            
        
  


    



