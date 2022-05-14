=begin
    Si enumeramos todos los números naturales debajo de 10 que son múltiplos de 3 o 5, obtenemos 3, 5, 6 y 9. La suma de estos múltiplos es 23. Encuentra la suma de todos los múltiplos de 3 o 5 por debajo de 1000.    
    i = 3
    multiplos = (i + 2*(i/3))

    def multiplo(*num)
      num.each do |numero|
        puts 3 * numero
      end
    end
    
    puts multiplo(2,3,4,5,6,7,8)
=end

puts "Digite el tamanho del vector"
n = gets.chomp.to_i
vector = []

for i in(0...n) #LLenado del vector
	vector.push(gets.chomp.to_f)
end

puts multiplos_tres = vector.select {|n| n%3 == n.zero? }