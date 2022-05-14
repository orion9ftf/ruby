# los métodos en Ruby se pueden clasificar en:
# publicos => public # metodos de una clase
# privados => private # pueden llamarse desde dentro de la clase
# protegidos => protected # puede llamarse desde otras clases mientras estas sean del mismo tipo

# scope de los métodos, variables

# class Humano

#     def initialize
#         self.publico
#     end

#     def publico
#         puts "Parece que soy Público!"
#     end

#     private
#     def privado
#         puts "Parece que soy privado"
#     end
# end

# class Tutor < Humano
#     def initialize
#         self.publico
#     end
# end

# Humano.new
# Tutor.new.publico


############################################################


# class Humano

#     def initialize
#         privado
#     end

#     def publico
#         puts "Parece que soy Público!"
#     end

#     private
#     def privado
#         puts "Parece que soy privado"
#     end
# end

# class Tutor < Humano
#     def initialize
#         self.publico
#     end
# end

# Humano.new
#Tutor.new.publico

############################################################

# class Humano

#     def initialize
#         privado
#     end

#     def publico
#         puts "Parece que soy Público!"
#     end

#     private
#     def privado
#         puts "Parece que soy privado"
#     end
# end

# class Tutor < Humano
#     def initialize
#         privado
#     end
# end

#Tutor.new #Parece que soy privado

############################################################


# class Humano

#     def initialize
#         privado
#     end

#     def publico
#         puts "Parece que soy Público!"
#     end

#   private
#     def privado
#         puts "Parece que soy privado"
#     end
#   protected
#     def protegido
#       puts "estoy protegido"
#     end

# end

# class Tutor < Humano
#     def initialize
#       protegido
#     end
# end

# Tutor.new #estoy protegido


################################################################

class Humano

  def initialize
      privado
  end

  def publico
      puts "Parece que soy Público!"
  end

private
  def privado
      puts "Parece que soy privado"
  end
protected
  def protegido
    puts "estoy protegido"
  end

end

class Tutor < Humano
  def initialize
    @inner = Humano.new
  end

  def llamar_protegido
    @inner.protegido
  end
end

class Alien
  def initialize
    @inner = Humano.new
  end

  def llamar_protegido
    @inner.protegido
  end
end

# Tutor.new.llamar_protegido
# Alien.new.llamar_protegido

tutor = Tutor.new
alien = Alien.new


puts tutor.is_a?(Humano) # true
puts alien.is_a?(Humano) # false

# Los métodos protegidos se pueden llamar desde fuera de la clase, siempre y cuando estas sean clases hijas de la clase donde esta definodo el método protegido!

