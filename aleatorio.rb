#numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# numeros  = (1..10)

# numeros.each do |numero|
#     puts numero
# end

# (1..10).each do |numero| # iterador de 1 a 10
#     puts numero
# end



# ***** de dos en dos ***********
# (1..10).step(2).each do |numero| # iterador de 1 a 10 pero de dos en dos, si quisieramos pares, tendria que partir de cero
#     puts numero
# end

('a'..'z').each do |numero|
    #print numero + "','"
end

puts ('a'..'z').to_a.join("','")


# ******* convertir un rango en array ******
# puts (0..20).to_a.reverse

# ***** rangos de combinaciones de letras *****
# puts ('ma'..'md').to_a
# ma
# mb
# mc
# md




