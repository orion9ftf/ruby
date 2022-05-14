def suma(a,b)
  a+ b
end

def resta(a,b)
  a - b
end

def mult(a,b)
  a * b
end

def div(a,b)
  a / b
end

def suma(a,b)
  a+ b
end

def pot(a,b)
  a ** b
end

puts (".:Calculadora con Ruby:.")
puts "Ingrese un número"
a = gets.chomp.to_i
puts "Ingresa otro número"
b = gets.chomp.to_i
puts "Ingresa un modo:"
puts("[1]. suma", "[2]. resta", "[3]. multiplicación", "[4]. división", "[5]. potencia", "[6]. salir")
modo = gets.chomp.to_i

puts case modo
when 1
  suma(a,b)
when 2
  resta(a,b)
when 3
  mult(a,b)
when 4
  div(a,b)
when 5
  pot(a,b)
else
  puts "Saliendo..."
end