=begin
Suponiendo que los nombre de mujer terminan en la letra "a" y los nombres de hombres terminan en la letra "o", veamos el siguiente ejemplo:
=end

nombres = ['Pedro', 'Camilo', 'Ana', 'Alexa', 'Juan']

# nombres.each do |i|
#   puts "Hola #{i}"
# end

nombres.each do |i|
  if i[-1] == 'o' 
    puts "Hola joven #{i}"
  elsif i[-1] == 'a'
    puts "Hola señorita #{i}"
  else 
    puts "Hola Tu"
  end
end