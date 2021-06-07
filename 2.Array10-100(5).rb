# 2. Заполнить массив числами от 10 до 100 с шагом 5

arr = []
i = 10
for i in 10..100
  if i % 5 == 0
    arr.push(i)
   break if i > 100
  end
end
  print arr

# Ещё проще:
arr = []
i = 10
while i < 100 do
  i += 5
  arr << i
end
  print arr