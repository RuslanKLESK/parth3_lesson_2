# 3. Заполнить массив числами фибоначчи до 100		0 1 1 2 3 5 8 13 21 34 55 89

fib = Array.new
n = 0; fib << n
a = 1; fib << a
b = 1; fib << b
i = 3
for n in 1..9
 c = a + b
 a = b
 b = c
 i += 1; fib << c
 end
puts fib[0..11]