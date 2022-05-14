# las propiedades en ruby son los valores asignados a los mismos objetos
# un objeto es una colección de propiedades y de métodos.

# las propiedades se identifican por variables de instancia.
# las variables de instancia son idetificadores que le pertenecen al objeto y no a la clase(por eso son de instancia).
# a los objetos tambien podemos llamarlos instancias de una clase.
# un objeto puede tener valores != en cada una de sus variables.

# class Tutor
#   def initialize(name)
#     @nombre = name # variable de clase
  
#     puts @nombre # Jose, Andrés
#   end
# end

# jose = Tutor.new("Jose")
# andres = Tutor.new("Andrés")

#puts jose.nombre #nos da un error ya que las variables de instancia solo pueden ser llamadas dentro del objeto, o podemos leerlas ni modificarlas
#puts andres.nombre


# class Tutor
#   def initialize(name)
#     @nombre = name # variable de clase
#   end
  
#   def say_may_name
#     puts @nombre # Jose, Andrés
#   end
# end

# jose = Tutor.new("Jose")
# andres = Tutor.new("Andrés")

# jose.say_may_name #Jose
# andres.say_may_name #Andrés

# En resúmen las variables de instancia pueden acceder al valor desde cualquier parte dentro del objeto.

# Los métodos accesoresnos permiten cambiar o modificar una propiedad.

# class Tutor
#   def initialize(name)
#     @nombre = name # variable de clase
#   end

#   def get_nombre# los getter sirven para leer propiedades
#     @nombre
#   end

#   def set_nombre(nombre)# los setter sirven para modificar las propiedades
#     @nombre = nombre 
#   end
# end

# jose = Tutor.new("Jose")
# andres = Tutor.new("Andrés")

# puts jose.get_nombre #Jose
# jose.set_nombre("Mateo") # le reasigno un nuevo valor
# puts jose.get_nombre # Mateo



# el código anterior es más parecido a varios lenguajes como por ej: java, ahora veremos como definirlo en Ruby:

class Tutor
  # attr_accessor :nombre #este representaría el getter y setter
  # attr_reader :nombre #solo define el getter
  # attr_writer :nombre #setter
  attr_accessor :nombre

  def initialize(name)
    @nombre = name    
  end

end

jose = Tutor.new("Jose")
andres = Tutor.new("Andrés")

puts jose.nombre #Jose
jose.nombre = "Mateo" # le reasigno un nuevo valor
puts jose.nombre # Mateo