class Perro
  
  def initialize(raza:"", nombre:"fido")
    # atributos
    @raza = raza
    @nombre = nombre
  end

  def ladrar
    puts "guau guau!"
  end

  def saludar
    puts "Hola soy #{@nombre} y mi raza  es: #{@raza}"
  end

end

perro1 = Perro.new(nombre: "Toby", raza: "pekines")

puts "el id del objeto es #{perro1}"
puts "el id del objeto es #{perro1.object_id}"

# como no existe el método correr, no lo ejecutará y enviará un mensaje al usuario
if perro1.respond_to?("correr") 
  perro1.correr
else
  puts "lo siento, pero el objeto no tiene el método correr "
end


# si existe el método ladrar, ejecutará el método, sino enviará un mensaje al usuario
if perro1.respond_to?("ladrar") 
  perro1.ladrar
else
  puts "Lo siento, pero el método no existe"
end 

perro1.saludar
perro2 = perro1
puts perro2.methods