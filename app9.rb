# encoding: cp1251

if (Gem.win_platform?)
        Encoding.default_external = Encoding.find(Encoding.locale_charmap)
        Encoding.default_internal = __ENCODING__

        [STDIN, STDOUT].each do |io|
                io.set_encoding(Encoding.default_external, Encoding.default_internal)
        end
end

dictionary = { 'Cat' => ['���', '�����', '������', '�����', '�������'],
			'Dog' => ['������', 'ϸ�', '�������', 'ϸ���', '�����'],
			'Girl' => ['�������', '�������', '������']}
dictionary['Girl'] << '�����'

loop do
	z = 0
	puts 'Enter an english word to get russian translation:'
	x = gets.strip.capitalize
	if dictionary.has_key?(x) == true
		puts "���������� ��������� ��������: #{dictionary[x].length}."
		puts '��������:'
		while z < dictionary[x].length do 
			puts "#{z+1}. #{dictionary[x][z]}."
			z = z + 1	
	end
	else
		puts "There is no such word in the dictionary."
	end
end
