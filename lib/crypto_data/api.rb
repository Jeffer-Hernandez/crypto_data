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
        ticker.collect do |currency|
            currency["asset_id"]
            binding.pry
        end
        
    end


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
end



