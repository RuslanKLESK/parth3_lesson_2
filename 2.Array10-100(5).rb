# 2. ��������� ������ ������� �� 10 �� 100 � ����� 5

arr = []
i = 10
for i in 10..100
  if i % 5 == 0
    arr.push(i)
   break if i > 100
  end
end
  print arr

# ��� �����:
arr = []
i = 10
while i < 100 do
  i += 5
  arr << i
end
  print arr