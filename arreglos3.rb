lista = []

continuar = true

while continuar == true
    puts "Ingresa un producto a tu lista de compras"
    producto = gets.chomp
    lista.push(producto)
    puts "Deseas agregar al carrito? (s) o salir (n)"
    respuesta = gets.chomp
    if respuesta == "s"
        continuar = true
    else
        continuar = false
    end
end

puts "Tu lista de productos ahora incluye: #{lista}"


