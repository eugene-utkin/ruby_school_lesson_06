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

if nil
	puts "��� ��������� ������� �� ����� �������� �� �����."
end

if dictionary['cat']
   	puts "�������!"
end

if dictionary.has_key? 'cat'
	puts "���� �����!"
end

if dictionary['cat']
	puts "���� �����!!!"
end

puts dictionary.values.include? '�����' 


puts dictionary.keys
puts dictionary.values

dictionary.each_key do |key|
	puts "����: #{key}."
end

x = 0

dictionary.each_value do |value|
	x = x + value.size
end

puts "���������� ��������� � �������: #{x}."