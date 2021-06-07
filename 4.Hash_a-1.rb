=begin
4. Заполнить хеш гласными буквами, где значением будет являтся порядковый номер буквы в алфавите (a - 1).
=end

# ВАРИАНТ 1:
abc_az = Hash[("a".."z").to_a.zip((1..26).to_a)]
v = { a: 1, e: 5, i: 9, 'o' => 15, 'u'=> 21, 'y'=> 25}
  puts v

# ВАРИАНТ 2:
abc_az = Hash[("a".."z").to_a.zip((1..26).to_a)]
element = abc_az.find_all do |element| element.select
  if element.include?(:a) || element.include?('e') || element.include?('i') || element.include?('o') || element.include?('u') || element.include?('y')
    puts "#{element}"
  else
  end
end

# Ответ должен быть Хэш, а не Массив!
# abc_az = Hash[("a".."z").to_a.zip((1..26).to_a)]
# v = { abc_az[1] => abc_az[5]=> abc_az[9]=> abc_az[15]=> abc_az[21]=> abc_az[25] }
# puts v