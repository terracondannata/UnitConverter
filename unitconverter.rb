class Converter
	def initialize
		@inches = 0.393701
		#number of inches in a centimeter
		@centimeters = 2.54
		#number of centimeters in an inch	
	end

	def convert_centimeters_to_inches(centimeters)
		centimeters * @inches
	end

	def convert_inches_to_centimeters(inches)
		inches * @centimeters
	end
end

prompt = '> '

puts "This is a simple unit converter."
puts "I can convert centimeters to inches, and vice versa."
puts "Would you like to convert from"
puts "(i) inches to centimeters?"
puts "(c) centimeters to inches?"
print prompt
unit = gets.chomp
if unit != "i" && unit != "c"
	puts "I don't understand. Exiting."
	exit
end
puts "How many?"
how_many = gets.chomp.to_f
# TODO: add integer check here

# breathe.

converter = Converter.new
if unit == "i"
	puts converter.convert_inches_to_centimeters(how_many)
elsif unit == "c"
	puts converter.convert_centimeters_to_inches(how_many)
end

puts "Congrats! You don't suck that bad."