
require 'pry'
require 'json'
require 'open-uri'
require 'uri'

#binding.pry


def convert_to_ordinal
	ordinals = {
		1 =>  "1st",
		2 => "2nd",
		3 => "3rd",
		4 => "4th",
		5 => "5th",
		6 => "6th",
		7 => "7th",
		8 => "8th",
		9 => "9th",
		10 => "10th",
		11 => "11th",
		12 => "12th",
		13 => "13th",
	}

	a = gets.chomp.to_i
	b = a.split("\\")
	puts ordinals[a]

end


def convert_to_phone_number(phone_number_string)
	phone_number_array = phone_number_string.split(//)

	x = phone_number_string.to_s.split("\\")
	result = "+1 (#{phone_number_array[0..2]}) #{phone_number_array[3..5]}-#{phone_number_array[6..9]}"
	result_two = "+1 (#{phone_number_string[0]}#{phone_number_string[1]}#{phone_number_string[2]}) #{phone_number_string[3]}#{phone_number_string[4]}#{phone_number_string[5]}-#{phone_number_string[6]}#{phone_number_string[7]}#{phone_number_string[8]}#{phone_number_string[9]}"
	
	puts result
	puts result_two

end

# code to execute method convert_to_phone_number
phone_number = gets.chomp.to_s
convert_to_phone_number(phone_number)

def convert_to_currency(currency_input)
	result = currency_input.round(2)
	result_two = result.to_s.gsub(/(\d)(?=\d{3}+(?:\.|$))(\d{3}\..*)?/,'\1,\2')
	puts "$#{result_two}"

end

currency_to_convert = gets.chomp.to_f
convert_to_currency(currency_to_convert)

def convert_to_euro(dollar_input)

	euro_over_dollar_rate = (1 / 1.3)
	euro_amount = dollar_input * euro_over_dollar_rate
	result = euro_amount.round(2)
	result_two = result.to_s.gsub(/(\d)(?=\d{3}+(?:\.|$))(\d{3}\..*)?/,'\1,\2')
	puts "#{result_two} EUR"

end

def convert_to_euro_api(dollar_input)
	file = open("http://rate-exchange.appspot.com/currency?from=USD&to=EUR&q=1")
	euro_over_dollar_rate = JSON.load(file.read)
	euro_amount = euro_over_dollar_rate["rate"] * dollar_input
	result= euro_amount.round(2)
	result_two = result.to_s.gsub(/(\d)(?=\d{3}+(?:\.|$))(\d{3}\..*)?/,'\1,\2')
	puts "#{result_two} EUR"
end
#code to execute convert_to_euro
dollar_to_convert_euro = gets.chomp.to_f
convert_to_euro(dollar_to_convert_euro)
convert_to_euro_api(dollar_to_convert_euro)

def convert_to_phrase(phrase_items)
	counter = phrase_items.size
	if counter == 2
		puts "#{phrase_items[0]} and #{phrase_items[1]}"
	else
		counter_two = counter - 1
		counter_two.times do |x|
											print "#{phrase_items[x]}, "
											end
		print "and #{phrase_items.last}"
	end
end

phrase_array = []
n = 0
while n < 5
	phrase_input = gets.chomp
	phrase_array << phrase_input
	n+=1
end
convert_to_phrase(phrase_array)


















