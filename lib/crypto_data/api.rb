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
        # binding.pry
        keys= []
        values=[]
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
       
        
        
    end
end
