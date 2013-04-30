
require 'pry'
require 'json'
require 'open-uri'
require 'uri'

file = open("http://rate-exchange.appspot.com/currency?from=USD&to=EUR&q=1")
euro_rate = JSON.load(file.read)
puts "#{euro_rate["rate"]} EURO"