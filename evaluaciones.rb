# case
# 0-10; donde 6 es reprobado

print "dame tu nota (1-10): "
calificacion = gets.chomp.to_i

# if calificacion == 10 || calificacion == 9
#     puts "excelente!"
# elsif calificacion == 8
#     puts "bien, pero prodria ser mejor!"
# elsif calificacion == 7
#     puts "estás en la pitilla"
# elsif calificacion == 6
#     puts "estás reprobado, pero tiene solución aun"
# else
#     puts "fuiste bueno :("    
# end

#puts calificacion

# ******** sentencia case *********

# case calificacion
# when 10
#     puts "Excelente"
# when 9
#     puts "Muy bien"
# when 7
#     puts "podemos mejorarlo"
# when 6
#     puts "reprobado, pero tiene solucion aun"
# else
#     puts "eras :("
# end

# ********* ahorremos los puts *******

# puts case calificacion
# when 10
#     "Excelente"
# when 9
#     "Muy bien"
# when 8
#     "bien"
# when 7
#     "podemos mejorarlo"
# when 6
#     "reprobado, pero tiene solucion aun"
# else
#     "eras :("
# end

# **** ahorrar linea de codigo *********

puts case calificacion
when 10,9
    "Excelente"
when 8
    "bien"
when 7
    "podemos mejorarlo"
when 6
    "reprobado, pero tiene solucion aun"
else
    "eras :("
end