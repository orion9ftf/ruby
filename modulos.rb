module Conversiones

  COMISION = 0.3 # constante

  @@variable = "texto"
  
  def self.euros_dolares(cantidad)
    cantidad * 2
  end

  def self.dolares_euros(cantidad)
    "Conversión de #{cantidad} dólares a euros es: #{cantidad * 23} - Comisión cargada de: #{COMISION}"
  end

end

puts Conversiones.euros_dolares(23)

respuesta = Conversiones.dolares_euros(2)
puts respuesta
