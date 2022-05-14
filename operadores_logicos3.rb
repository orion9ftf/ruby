puts "¿que día es hoy?"
dia = gets.chomp


if dia == 'lunes'
    puts 'día de la luna'
elsif dia == "martes" 
    puts "Día de Marte"
elsif dia == "miércoles"
    puts "Día de Mercurio"
elsif dia == "jueves"
    puts "Día de Jupiter"
elsif dia == "viernes"
    puts "Día de Venus" 
elsif dia == "sábado"
    puts "Descanso" 
else dia == "domingo"
    puts "Día del Señor"
end