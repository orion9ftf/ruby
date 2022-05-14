# class Video
#   @@type = "video/mp4"
  
#   def self.type_desde_clase
#     p @@type
#   end

#   def type_desde_objeto
#     p @@type
#   end

# end

# Video.type_desde_clase #"video/mp4"
# Video.new.type_desde_objeto # "video/mp4"

#######################################################

# class Video
#   @type = "video/mp4"
  
#   def self.type_desde_clase
#     p @type
#   end

#   def type_desde_objeto
#     p @type
#   end

# end

# Video.type_desde_clase #"video/mp4"
# Video.new.type_desde_objeto # nil


##############################################

# class Viyeo
#   @@de_clase = "soy de clase"
#   @de_instancia = "soy de instancia"
# end

# class YouTube < Viyeo
#   def self.test
#     p @@de_clase # nos va a imprimir la variable de clase
#     p @de_instancia # nos va a imprimir la variable de instancia
#   end
# end

# YouTube.test
# "soy de clase"
# nil


###################################################

# class Viyeo
#   @@de_clase = "soy de clase"
#   @de_instancia = "soy de instancia"

#   def self.test
#     p @@de_clase 
#     p @de_instancia
#   end
# end

# class YouTube < Viyeo
#   def self.test
#     p @@de_clase 
#     p @de_instancia 
#   end
# end

# Viyeo.test
# YouTube.test

# "soy de clase"
# "soy de instancia"
# "soy de clase"
# nil


##################################################

class Viyeo
  @@de_clase = "soy de clase"
  @de_instancia = "soy de instancia"

  def self.test
    p @@de_clase 
    p @de_instancia
  end
end

class YouTube < Viyeo
  def self.test
    @@de_clase = "la clase fue cambiada!"
    p @@de_clase 
    p @de_instancia 
  end
end

YouTube.test
# "la clase fue cambiada!"
# nil
Viyeo.test
# clase fue cambiada!"
# "soy de instancia"