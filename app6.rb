arr = %w[Mike Jessie Hank]

arr.each_with_index do |name, index|
		puts "#{index + 1}. #{name}."
end