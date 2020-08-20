# this is the guts of your CLI program
# you will puts phrases using the variables saved from the database in your "currency info" class
# the entire interface will be in this class

class CryptoData::CLI
    include CryptoData

    def call
        puts "Welcome"
       
        print_menu(@input)
        print_info(@input)
        start
        
    end

    def start
        puts ""
        puts "Would you like to see another pair? Enter Y or N"

        input = gets.strip.downcase
        if input == "y"
        print_menu(@input)
        elsif input == "n"
        puts ""
        puts "Thank you! Have a great day!"
        exit
        else
        puts ""
        puts "I don't understand that answer."
        exit
        end
    end

    def print_menu(input)
        
        # puts the menu.. menu will consist of the different cryptocurrency pairs available in the api info as a numbered list
        # ex. btcusd, btceth, btcltc, ethusd
        puts "Which number currency would you like info about?"
        

        puts "1.  USD"
        puts "2.  BTC"
        puts "3.  PLN"
        puts "4.  EUR"
        puts "5.  CNY"
        puts "6.  JPY"
        puts "7.  AUD"
        puts "8.  CHF"
        puts "9.  SEK"
        puts "10. GBP"

        @input = gets.strip.to_i
        print_info(@input)
        
    end

    def print_info(input)

        # psuedo code, have not named variables because i have not extracted infor from API yet.
        # puts "Which number currency would you like info about?"
        # @input = gets.strip.to_i

        if @input == 1
            puts "asset_id: USD"
            puts "name: US Dollar"
            puts "type_is_crypto: 0"
            puts "data_start: 2010-07-17"
            puts "data_end: 2020-08-19"
            puts "data_quote_start: 2014-02-24T17:43:05.0000000Z"
            puts "data_quote_end: 2020-08-19T18:06:19.4429175Z"
            puts "data_orderbook_start: 2014-02-24T17:43:05.0000000Z"
            puts "data_orderbook_end: 2020-08-05T14:38:00.7082850Z"
            puts "data_trade_start: 2010-07-17T23:09:17.0000000Z"
            puts "data_trade_end: 2020-08-19T18:07:35.9831430Z"
            puts "data_symbols_count: 26527"
            puts "volume_1hrs_usd: 1118265036950.45"
            puts "volume_1day_usd: 50408357772429.19"
            puts "volume_1mth_usd: 1733614557358157.79"
            puts "id_icon: 0a4185f2-1a03-4a7c-b866-ba7076d8c73b"
            start

        elsif @input == 2

            puts "asset_id: BTC"
            puts "name: US Dollar"
            puts "type_is_crypto: 0"
            puts "data_start: 2010-07-17"
            puts "data_end: 2020-08-19"
            puts "data_quote_start: 2014-02-24T17:43:05.0000000Z"
            puts "data_quote_end: 2020-08-19T18:06:19.4429175Z"
            puts "data_orderbook_start: 2014-02-24T17:43:05.0000000Z"
            puts "data_orderbook_end: 2020-08-05T14:38:00.7082850Z"
            puts "data_trade_start: 2010-07-17T23:09:17.0000000Z"
            puts "data_trade_end: 2020-08-19T18:07:35.9831430Z"
            puts "data_symbols_count: 26527"
            puts "volume_1hrs_usd: 1118265036950.45"
            puts "volume_1day_usd: 50408357772429.19"
            puts "volume_1mth_usd: 1733614557358157.79"
            puts "id_icon: 0a4185f2-1a03-4a7c-b866-ba7076d8c73b"
            start

        elsif @input == 3

            puts "asset_id: PLN"
            puts "name: US Dollar"
            puts "type_is_crypto: 0"
            puts "data_start: 2010-07-17"
            puts "data_end: 2020-08-19"
            puts "data_quote_start: 2014-02-24T17:43:05.0000000Z"
            puts "data_quote_end: 2020-08-19T18:06:19.4429175Z"
            puts "data_orderbook_start: 2014-02-24T17:43:05.0000000Z"
            puts "data_orderbook_end: 2020-08-05T14:38:00.7082850Z"
            puts "data_trade_start: 2010-07-17T23:09:17.0000000Z"
            puts "data_trade_end: 2020-08-19T18:07:35.9831430Z"
            puts "data_symbols_count: 26527"
            puts "volume_1hrs_usd: 1118265036950.45"
            puts "volume_1day_usd: 50408357772429.19"
            puts "volume_1mth_usd: 1733614557358157.79"
            puts "id_icon: 0a4185f2-1a03-4a7c-b866-ba7076d8c73b"
            start

        elsif @input == 4

            puts "asset_id: EUR"
            puts "name: US Dollar"
            puts "type_is_crypto: 0"
            puts "data_start: 2010-07-17"
            puts "data_end: 2020-08-19"
            puts "data_quote_start: 2014-02-24T17:43:05.0000000Z"
            puts "data_quote_end: 2020-08-19T18:06:19.4429175Z"
            puts "data_orderbook_start: 2014-02-24T17:43:05.0000000Z"
            puts "data_orderbook_end: 2020-08-05T14:38:00.7082850Z"
            puts "data_trade_start: 2010-07-17T23:09:17.0000000Z"
            puts "data_trade_end: 2020-08-19T18:07:35.9831430Z"
            puts "data_symbols_count: 26527"
            puts "volume_1hrs_usd: 1118265036950.45"
            puts "volume_1day_usd: 50408357772429.19"
            puts "volume_1mth_usd: 1733614557358157.79"
            puts "id_icon: 0a4185f2-1a03-4a7c-b866-ba7076d8c73b"
            start

        elsif @input == 5

            puts "asset_id: JPY"
            puts "name: US Dollar"
            puts "type_is_crypto: 0"
            puts "data_start: 2010-07-17"
            puts "data_end: 2020-08-19"
            puts "data_quote_start: 2014-02-24T17:43:05.0000000Z"
            puts "data_quote_end: 2020-08-19T18:06:19.4429175Z"
            puts "data_orderbook_start: 2014-02-24T17:43:05.0000000Z"
            puts "data_orderbook_end: 2020-08-05T14:38:00.7082850Z"
            puts "data_trade_start: 2010-07-17T23:09:17.0000000Z"
            puts "data_trade_end: 2020-08-19T18:07:35.9831430Z"
            puts "data_symbols_count: 26527"
            puts "volume_1hrs_usd: 1118265036950.45"
            puts "volume_1day_usd: 50408357772429.19"
            puts "volume_1mth_usd: 1733614557358157.79"
            puts "id_icon: 0a4185f2-1a03-4a7c-b866-ba7076d8c73b"
            start

        elsif @input == 6

            puts "asset_id: CNY"
            puts "name: US Dollar"
            puts "type_is_crypto: 0"
            puts "data_start: 2010-07-17"
            puts "data_end: 2020-08-19"
            puts "data_quote_start: 2014-02-24T17:43:05.0000000Z"
            puts "data_quote_end: 2020-08-19T18:06:19.4429175Z"
            puts "data_orderbook_start: 2014-02-24T17:43:05.0000000Z"
            puts "data_orderbook_end: 2020-08-05T14:38:00.7082850Z"
            puts "data_trade_start: 2010-07-17T23:09:17.0000000Z"
            puts "data_trade_end: 2020-08-19T18:07:35.9831430Z"
            puts "data_symbols_count: 26527"
            puts "volume_1hrs_usd: 1118265036950.45"
            puts "volume_1day_usd: 50408357772429.19"
            puts "volume_1mth_usd: 1733614557358157.79"
            puts "id_icon: 0a4185f2-1a03-4a7c-b866-ba7076d8c73b"
            start

        elsif @input == 7

            puts "asset_id: AUD"
            puts "name: US Dollar"
            puts "type_is_crypto: 0"
            puts "data_start: 2010-07-17"
            puts "data_end: 2020-08-19"
            puts "data_quote_start: 2014-02-24T17:43:05.0000000Z"
            puts "data_quote_end: 2020-08-19T18:06:19.4429175Z"
            puts "data_orderbook_start: 2014-02-24T17:43:05.0000000Z"
            puts "data_orderbook_end: 2020-08-05T14:38:00.7082850Z"
            puts "data_trade_start: 2010-07-17T23:09:17.0000000Z"
            puts "data_trade_end: 2020-08-19T18:07:35.9831430Z"
            puts "data_symbols_count: 26527"
            puts "volume_1hrs_usd: 1118265036950.45"
            puts "volume_1day_usd: 50408357772429.19"
            puts "volume_1mth_usd: 1733614557358157.79"
            puts "id_icon: 0a4185f2-1a03-4a7c-b866-ba7076d8c73b"
            start

        elsif @input == 8

            puts "asset_id: CHF"
            puts "name: US Dollar"
            puts "type_is_crypto: 0"
            puts "data_start: 2010-07-17"
            puts "data_end: 2020-08-19"
            puts "data_quote_start: 2014-02-24T17:43:05.0000000Z"
            puts "data_quote_end: 2020-08-19T18:06:19.4429175Z"
            puts "data_orderbook_start: 2014-02-24T17:43:05.0000000Z"
            puts "data_orderbook_end: 2020-08-05T14:38:00.7082850Z"
            puts "data_trade_start: 2010-07-17T23:09:17.0000000Z"
            puts "data_trade_end: 2020-08-19T18:07:35.9831430Z"
            puts "data_symbols_count: 26527"
            puts "volume_1hrs_usd: 1118265036950.45"
            puts "volume_1day_usd: 50408357772429.19"
            puts "volume_1mth_usd: 1733614557358157.79"
            puts "id_icon: 0a4185f2-1a03-4a7c-b866-ba7076d8c73b"
            start

        elsif @input == 9

            puts "asset_id: SEK"
            puts "name: US Dollar"
            puts "type_is_crypto: 0"
            puts "data_start: 2010-07-17"
            puts "data_end: 2020-08-19"
            puts "data_quote_start: 2014-02-24T17:43:05.0000000Z"
            puts "data_quote_end: 2020-08-19T18:06:19.4429175Z"
            puts "data_orderbook_start: 2014-02-24T17:43:05.0000000Z"
            puts "data_orderbook_end: 2020-08-05T14:38:00.7082850Z"
            puts "data_trade_start: 2010-07-17T23:09:17.0000000Z"
            puts "data_trade_end: 2020-08-19T18:07:35.9831430Z"
            puts "data_symbols_count: 26527"
            puts "volume_1hrs_usd: 1118265036950.45"
            puts "volume_1day_usd: 50408357772429.19"
            puts "volume_1mth_usd: 1733614557358157.79"
            puts "id_icon: 0a4185f2-1a03-4a7c-b866-ba7076d8c73b"
            start

        elsif @input == 10

            puts "asset_id: GBP"
            puts "name: US Dollar"
            puts "type_is_crypto: 0"
            puts "data_start: 2010-07-17"
            puts "data_end: 2020-08-19"
            puts "data_quote_start: 2014-02-24T17:43:05.0000000Z"
            puts "data_quote_end: 2020-08-19T18:06:19.4429175Z"
            puts "data_orderbook_start: 2014-02-24T17:43:05.0000000Z"
            puts "data_orderbook_end: 2020-08-05T14:38:00.7082850Z"
            puts "data_trade_start: 2010-07-17T23:09:17.0000000Z"
            puts "data_trade_end: 2020-08-19T18:07:35.9831430Z"
            puts "data_symbols_count: 26527"
            puts "volume_1hrs_usd: 1118265036950.45"
            puts "volume_1day_usd: 50408357772429.19"
            puts "volume_1mth_usd: 1733614557358157.79"
            puts "id_icon: 0a4185f2-1a03-4a7c-b866-ba7076d8c73b"
            start

        else
            puts "I'm not sure about that request. Please try again."
            start
        end
        start
    end



end