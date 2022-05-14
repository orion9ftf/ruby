numero = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

numero.each do |num|
  #puts num
end

#numeros = (1..20).to_a # transformar elrango a un arreglo


numeros = (1..20)

numeros.each do |num|
  #puts num
end
#puts numeros.class # Range

numeros = (0..10).step(2)
numeros.each do |num|
  puts num
end


########### abecedario ############

abecedario = ('a'..'z').to_a
#puts abecedario

### sino recorriendolo ###

abecedario.each do |letras|
  # puts letras
end

silabas = ('ma'..'mh')#.step(2)

silabas.each do |sil|
  #puts sil
end

