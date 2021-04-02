book = {}

loop do
puts "Enter name (Enter to stop):"
	x = gets.strip.capitalize
	if x == ""
		exit
	end
	

puts "Enter phone number: "
           y = gets.strip

	book[x] = y

	book.each do |key, value|
	   puts "#{key} - #{value}"
	end
end