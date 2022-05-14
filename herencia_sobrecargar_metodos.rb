class Terricola
  attr_accessor :nombre

  def initialize(nombre)
    @nombre = nombre
  end

  def saludar
    puts "Hola soy #{nombre} y soy un #{self.class} o al menos lo parezco"
  end
end

class Ingeniero < Terricola
end

class Animal < Terricola
  def saludar
    puts "soy un #{self.class} y por eso no hablo :("
  end
end

class Leon < Animal
  def saludar
    puts "rawww!!" # se sobreescribe el método
  end
end

class Mono < Animal
  def saludar
    puts "Uauauauaua!!"
  end
end

leon = Leon.new('Leon') # si comentaramos los métodos saludas de laas demás clases, buscaría el metodo en la clase padre y lo ejecutaría
leon.saludar

ave = Animal.new('Gansa')
ave.saludar

mono = Mono.new('Mono')
mono.saludar

jorge = Terricola.new("Jorge")
#jorge.nombre = "Jorge"
#puts jorge.nombre
jorge.saludar
#puts jorge.class # Terricola


# pepe = Ingeniero.new("Pepe")
# puts pepe.nombre
# pepe.saludar