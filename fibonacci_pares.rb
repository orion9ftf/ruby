=begin
 Cada nuevo término en la sucesión de Fibonacci se genera sumando los dos términos anteriores. Al comenzar con 1 y 2, los primeros 10 términos serán:

1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

Al considerar los términos en la sucesión de Fibonacci cuyos valores no superan los cuatro millones, encuentre la suma de los términos de valor par.

1.- Fibonacci
2.- suma de valores pares
=end


def fib(num)
  a = 0
  b = 1
  while b < num do
    puts b
    a,b = b,a+b
  end
end




fib(4_000_000) # no supera los 4 mill | falta valores pares


