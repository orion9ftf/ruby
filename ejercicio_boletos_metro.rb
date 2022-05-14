=begin
Ejercicio: Los boletos del metro

Crea un ciclo while que muestre el precio a pagar por boletos del metro/subterráneo. Un boleto cuesta 1.5 dólares, se le debe mostrar al usuario una tabla que indique cuánto debe pagar por 1 boleto, cuanto debe pagar por 2 boletos, cuánto debe pagar por 3 boletos etc. hasta llegar a 20 boletos. Por ejemplo:

1 – $1.5 
2 – $3.0 
3 – $4.5 
4 – $6.0 
…
19 – $28.5 
20 – $30.0

No te preocupes por colocar dos decimales en cada cifra, con un decimal esta bien por ahora.
=end

valor = 1.5
puts "Ingrese la cantidad de boletos que desea comprar: "
boletos = gets.chomp.to_f
total = boletos * valor

while valor < 31.0
    puts "el valor del boleto es: #{total}"
    if total == valor
        puts "el valor es de #{total}" 
    elsif total == valor * 2
        puts "el valor es de #{total}"
    elsif total == valor * 3
        puts "el valor es de #{total}"
    elsif total == valor * 4
        puts "el valor es de #{total}}"
    end
    #valor = valor

end
