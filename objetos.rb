# puts "cadena de carácteres en ruby".upcase
# puts "cadena de carácteres en ruby".reverse # cambia el orden de los caracteres
# puts "19".to_i #convierte el string en entero: 19
# puts -5.abs # convierte en número absoluto o positivo en este caso
# puts 22.89.round # redondea la cifra a un entero: 23
# puts ["hola", "mundo"].empty? #nos devuelve: false
# puts "cadena de carácteres en ruby".split

class Empleado

  def initialize(salario_mes)
    @salario_mes = salario_mes
  end
  
  def calcular_aguinaldo
    @salario_mes / 2
  end
  
  end

  empleado = Empleado.new(7000)
  puts empleado.calcular_aguinaldo