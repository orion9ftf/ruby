puts "Ingresa tu calificación"
calificaciones = gets.chomp.to_i

case calificaciones
when 8,9,10
    puts "excelente"
when 6,7
    puts "puedes mejorarlo"
when 4,5
    puts "fuiste bueno"
else
    puts "nos vemos el próximo año :("
end