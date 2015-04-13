require 'open-uri'
require 'json'
require './address_to_coords.rb'

# If you experience an error relating to SSL,
#   uncomment the following two lines:

# require 'openssl'
# OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

puts "Let's get the weather forecast for your address."

puts "What is the address you would like to know the weather for?"
street_address = gets.chomp
url_safe_street_address = URI.encode(street_address)

url_of_data_we_want = '"https://api.forecast.io/forecast/ca8abc9e3420cd2d4bd4e8015cfad928/'+#{the_latitude} + #{the_longitude}+'"'
raw_data = open(url_of_data_we_want).read
parsed_data = JSON.parse(raw_data)

the_temperature = parsed_data["currently"]["temperature"]
the_hour_outlook = parsed_data["hourly"]["summary"]
the_day_outlook = parsed_data["daily"]["data"]["summary"]

# Ultimately, we want the following line to work when uncommented:

# puts "The current temperature at #{street_address} is #{the_temperature} degrees."
# puts "The outlook for the next hour is: #{the_hour_outlook}"
# puts "The outlook for the next day is: #{the_day_outlook}"
