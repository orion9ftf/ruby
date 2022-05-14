# Permite pasar datos y recibirlos como si fueran arreglos

# def saludo(nombres)
#   nombres.each do |nombre|
#     puts "Hola #{nombre}"
#   end
# end

########## sin el do ###########

# def saludo(nombres)
#   nombres.each { |nombre| puts "Hola #{nombre}"}
# end

#saludo(['juan', 'martina'])


####### splat #########

# def saludo(*nombres)
#   nombres.each do |nombre|
#     puts "Hola #{nombre}"
#   end
# end

# saludo('juan', 'martina')

####### splat con variable ########

amigos = ['Juan', 'Ana', 'Alicia']

def saludo(nombres)
  nombres.each do |x|
    puts "Hola #{x}"
  end
end

saludo(amigos)
