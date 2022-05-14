# select
# a = [1, 2, 3, 4, 5, 6, 7]
# b = a.select{ |x| x % 2 == 0 }
# puts b # pares

# reject
# a = [1, 2, 3, 4, 5, 6, 7]
# b = a.reject{ |x| x.even? }
# puts b # impares

# inject
a = [1, 2, 3, 4, 5, 6, 7]
b = a.inject(0){ |sum, x| sum += x }
puts b # 28
