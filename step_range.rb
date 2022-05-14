numeros = (1..100)
#numeros = (0..100).step(10)
numeros = (1..100).step(2) # sigue el ramgo pero de dos en dos
numeros.each do |numero|
  puts numero
end
