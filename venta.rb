precio_pan = 100
precio_leche = 120
precio_azucar = 20
precio_arroz = 30
subtotal = 0

iva = 0.20

puts "Introducir producto"
puts "1. Pan: #{precio_pan}"
puts "2. Leche: #{precio_leche}"
puts "3. Azúcar: #{precio_azucar}"
puts "4. Arroz: #{precio_arroz}"

puts "Escoge un producto"
prod = gets.chomp.to_i

if prod == 1 
    puts "has selecciondo Pan"
    subtotal = precio_pan
elsif prod == 2
    puts "has seleccionado leche"
    subtotal = precio_leche
elsif prod == 3
    puts "has seleccionado azúcar"
    subtotal = precio_azucar
elsif prod == 4
    puts "has seleccionado \"arroz\""
    subtotal = precio_arroz
else
    puts "La opción no es válida!"
end

total = subtotal + subtotal * iva
puts "total: #{total.round(2)}"