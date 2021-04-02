# encoding: cp1251

if (Gem.win_platform?)
        Encoding.default_external = Encoding.find(Encoding.locale_charmap)
        Encoding.default_internal = __ENCODING__

        [STDIN, STDOUT].each do |io|
                io.set_encoding(Encoding.default_external, Encoding.default_internal)
        end
end

dictionary = { 'Cat' => ['Кот', 'Кошка', 'Котёнок', 'Котик', 'Кошачий'],
			'Dog' => ['Собака', 'Пёс', 'Собачка', 'Пёсик', 'Псина'],
			'Girl' => ['Девочка', 'Девушка', 'Девица']}
dictionary['Girl'] << 'Дочка'

loop do
	z = 0
	puts 'Enter an english word to get russian translation:'
	x = gets.strip.capitalize
	if dictionary.has_key?(x) == true
		puts "Количество вариантов перевода: #{dictionary[x].length}."
		puts 'Переводы:'
		while z < dictionary[x].length do 
			puts "#{z+1}. #{dictionary[x][z]}."
			z = z + 1	
	end
	else
		puts "There is no such word in the dictionary."
	end
end
