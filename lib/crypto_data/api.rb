# require 'rubygems'
# require 'net/http'
# require 'open-uri'
# require 'json'
# require 'pry'

class CryptoData::GetCurrency

    attr_accessor :key
    
    def initialize
        @key = '1ABF7FFA-CF66-4C94-B5CC-DF2BB2676878'
    end

    def fetch_data
        url = URI("https://rest.coinapi.io/v1/assets")
        http = Net::HTTP.new(url.host, url.port)
        request = Net::HTTP::Get.new(url)
        request["X-CoinAPI-Key"] = @key
        response = http.request(request)
        puts response.read_body
    end


    # def symbol
        # we use the JSON library to parse the API response into nicely formatted JSON
        #   programs = JSON.parse(self.get_currency)
        #   programs.collect do |currency|
            # currency["symbol"]  
        # end
    # end

end

# currency = GetCurrency.new
# puts currency.symbol.uniq