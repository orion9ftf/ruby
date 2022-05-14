=begin
Escribe  una clase llamada “Circulo”. El constructor de la clase debe recibir un parámetro y almacenarlo en una variable de instancia llamada “diametro”. La clase debe además tener un método llamado “calcular_perimetro”, el cual como su nombre lo indica debe devolver el perímetro o circunferencia del círculo. Por último crea un objeto a partir de la clase y calcula su perímetro. Recuerda que la formula para obtener el perímetro de un círculo es 2 por Pi por radio (el radio es la mitad del diámetro, el valor de Pi es 3.1416).
=end

class Circulo

  def initialize(diametro)
      @diametro = diametro
  end
  def calcular_perimetro
      (PI * 2) / @diametro
  end

end

PI = 3.1416

diametro = Circulo.new(4)
puts diametro.calcular_perimetro # 1.5708