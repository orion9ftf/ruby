class Persona
  def hablar
    puts "> Hola soy Pepa"
  end

  def gritar_fuerte # método público
    #gritar
    puts gritar
  end

  private

  def gritar
    puts "Holaaaaaa!"
  end

  protected
  def self.saludo
    puts "Hola, cómo estás?"
  end
end

# yo = Persona.new
# yo.hablar
# yo.gritar_fuerte

############ Herencia ###########
class Yo < Persona
  def saludando
    Persona.saludo
  end
end

yo = Yo.new
yo.hablar
yo.saludando