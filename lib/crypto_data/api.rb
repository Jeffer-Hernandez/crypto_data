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

        url = URI("https://rest.coinapi.io/v1/exchangerate/BTC?invert=false")
        http = Net::HTTP.new(url.host, url.port)
        http.use_ssl = true
        request = Net::HTTP::Get.new(url)
        request["X-CoinAPI-Key"] = '1ABF7FFA-CF66-4C94-B5CC-DF2BB2676878'
        response = http.request(request)
        data = response.read_body

        ticker = JSON.parse(data)
        
        keys= []
        values=[]
        ticker_symbol = []
        rate = []

        # ticker.each do |key, val| 
        #     keys<< key
        #     values << val
        #     binding.pry
        # end
        attrs = []
        currencies = []
        ticker.each do|key, val|
            keys << key
            values << val
            
        end

        # binding.pry
        values[1].each do |currency|
            attrs << currency
        
        end

        attrs[1..10].each do |cur|
            currencies<< cur
            CryptoData::Currency.new(currencies)
        end
       
        # time = []
        # rate = []
        # asset_id = []

        # currencies.each do |cur|
        #     time << cur["time"]
        #     asset_id << cur["asset_id_quote"]
        #     rate << cur["rate"]
            
        
        
        
        

        
        # CryptoData::Currency.new_from_collection(currencies)
        
      
        # binding.pry


        # binding.pry
        # values[1].each do |line|
        #     ticker_symbol << line["asset_id_quote"]
      
        # end

        # values[1].each do |line|
        #     rate << line["rate"]
            
        # end

        # CryptoData::Currency.new(ticker_symbol, rate)
        
    end
end
