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

if nil
	puts "Это сообщение никогда не будет выведено на экран."
end

if dictionary['cat']
   	puts "Никогда!"
end

if dictionary.has_key? 'cat'
	puts "Есть кошка!"
end

if dictionary['cat']
	puts "Есть кошка!!!"
end

puts dictionary.values.include? 'Кошка' 


puts dictionary.keys
puts dictionary.values

dictionary.each_key do |key|
	puts "Ключ: #{key}."
end

x = 0

dictionary.each_value do |value|
	x = x + value.size
end

puts "Количество переводов в словаре: #{x}."