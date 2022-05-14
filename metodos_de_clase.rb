# class SoyObjeto
#   @nombre_clase = "SoyObjeto"

#   def self.nombre_clase
#     @nombre_clase
#   end

#   def self.nombre_clase=(nombre_clase)
#     @nombre_clase = nombre_clase
#   end
# end

# # puts SoyObjeto.nombre_clase # SoyObjeto
# SoyObjeto.nombre_clase = "Podemos sustituirte!"
# puts SoyObjeto.nombre_clase # Podemos sustituirte!


######################################################

# class SoyObjeto
#   @nombre_clase = "SoyObjeto"

#   class << self
    
#     def nombre_clase
#       @nombre_clase
#     end
  
#     def nombre_clase=(nombre_clase)
#       @nombre_clase = nombre_clase
#     end
#   end

# end

# SoyObjeto.nombre_clase = "Podemos sustituirte!"
# puts SoyObjeto.nombre_clase # Podemos sustituirte!

#########################################################

class SoyObjeto
  @nombre_clase = "SoyObjeto"

  class << self
    
    def nombre_clase
      @nombre_clase
    end
  
    def nombre_clase=(nombre_clase)
      @nombre_clase = nombre_clase
    end
  end
  
end

# Modelo usuario:

class User
end

User.find() # con .find puedo traer una colección de objetos

SoyObjeto.nombre_clase = "Podemos sustituirte!"
puts SoyObjeto.nombre_clase