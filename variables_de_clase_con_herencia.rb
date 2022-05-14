class Padre
  @@de_clase = "test de la clase"
  @de_objeto = "test del objeto"

  def self.test
    puts @@de_clase
    puts @de_objeto
  end
end

class Hije < Padre
  def self.test
    super
  end
end

Padre.test # es un método de clase asi que no necesita inicializarlo con new
