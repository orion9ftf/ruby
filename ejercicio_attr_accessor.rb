class Humano
  attr_accessor :nombre, :edad, :genero
  
  def initialize(name, year, genre)
    @nombre = name
    @edad = year
    @genero = genre
  end

  def saludo
    puts "Hola mi nomnbre es #{nombre}"
  end
end

pedro = Humano.new("Pablo", 23, "femenino")
# puts pedro.nombre
# puts pedro.edad
# puts pedro.saludo
maria = Humano.new("Maria", 22, "femenino")
ana = Humano.new("Anita", 25, "masculino")

puts pedro.nombre, pedro.edad, pedro.genero
puts ".::."
puts maria.nombre, maria.edad, maria.genero
puts ".::."
puts ana.nombre, ana.edad, ana.genero

maria.nombre = "Constanza"
maria.saludo
