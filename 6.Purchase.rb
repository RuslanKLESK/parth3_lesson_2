=begin
6. Сумма покупок. Пользователь вводит поочередно название товара, цену за единицу и кол-во купленного товара (может быть нецелым числом). Пользователь может ввести произвольное кол-во товаров до тех пор, пока не введет "стоп" в качестве названия товара. На основе введенных данных требуетеся:
Заполнить и вывести на экран хеш, ключами которого являются названия товаров, а значением - вложенный хеш, содержащий цену за единицу товара и кол-во купленного товара. Также вывести итоговую сумму за каждый товар.
Вычислить и вывести на экран итоговую сумму всех покупок в "корзине".
=end

cart = { product: {amount: 0.0, cost: 0.0} }
# cart = { [ product, amount, cost] }

loop do
puts " "

puts "Выберите действие?"
puts "Напечатайте 'add' для добавления товара."
puts "Напечатайте 'end' показать все товары."
puts "Напечатайте 'stop' для выхода из программы."

choice = gets.chomp.downcase
break if choice == "stop"

case choice

when 'add'
  puts "Введите название товара:"
  product = gets.chomp.downcase
  if cart[product.to_sym].nil?
    cart[product.to_sym] = product

    puts "Введите количество (может быть не целым числом)."
    amount = gets.chomp.to_f
    cart[:product][:amount] += amount.to_f
	
	puts "Введите цену за единицу товара (может быть не целым числом)."
    cost = gets.chomp.to_f
    cart[:product][:cost] += cost.to_f
	
    puts "Товар: #{product.to_sym} добавлен в количестве #{amount} с ценой #{cost}. "
  else
    puts "Продукт уже есть! #{[product.to_sym]}."
end

when 'end'
  cart.each do |product, amount, cost|
    puts "Всего в корзине: #{product}: #{amount} #{cost}"
	# summa = cart.amount * cart.cost
	# puts "На общую сумму: #{summa}"
  end
end

end