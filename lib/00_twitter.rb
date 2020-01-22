 # ligne très importante qui appelle la gem.
 require 'twitter'

 # n'oublie pas les lignes pour Dotenv ici…
 require 'dotenv'
 Dotenv.load('../.env')
 # quelques lignes qui appellent les clés d'API de ton fichier .env
 client = Twitter::REST::Client.new do |config|
   config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
   config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
   config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
   config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
 end


    array=["@jcunniet","@Aziliz31","@ssoumier","@VincentBartoli2"]

    for i in array
      puts i
      puts client
        client.update("Bonjour #{i}, #bonjour_monde! ")
    end

   





