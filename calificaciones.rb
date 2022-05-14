
calificaciones = gets.chomp.to_i

if calificaciones == 10
    puts "excelente!"
elsif calificaciones >= 9
    puts "muy bien!"
elsif calificaciones >= 8
    puts "puedes mejorarlo!"
elsif calificaciones >= 7
    puts "la viste"
else 
    puts "fuiste bueno :("
end