
=begin
class Persona
  def initialize(first,last,age)
    @first_name = first
    @last_name = last
    @age = age
  end

  def birthday # cumpleaños
    @age += 1
  end

  def presentacion(type)
    if type == "Estudiante"
      puts "hola Profesor, mi nombre es #{@first_name} #{@last_name}"
    elsif type == "Profesor"
      puts "hola Alumnos, soy el profesor #{@first_name} #{@last_name}"
    elsif type == "Padre"
      puts "hola somos de la familia #{@last_name}"
    else
      puts "Hola a tod@s!!"
    end
  end
end

pedro = Persona.new('Pedro Victor', 'Barrios Garrido', 22)
puts pedro.birthday
pedro.presentacion("Profesor")
jorge = Persona.new("Jorge",  "Torres", 23)
jorge.presentacion("Estudiante")
=end

###### Polimorfismo ######
class Persona
  def initialize(first, last, age)
    @first_name = first
    @last_name = last
    @age = age
  end

  def birthday
    @age += 1
  end

  def presentacion
    puts "Hola a todos, yo soy #{@first_name} #{@last_name}"
  end
end

class Estudiante < Persona
  def presentacion
    puts "Hola Profesor, soy el estudiante: #{@first_name} #{@last_name}"
  end
end

class Profesor < Persona
  def presentacion
    puts "Hola Alumnos, soy el profesor: #{@first_name} #{@last_name}"
  end
end


class Padres < Persona
  def presentacion
    puts "Hola somos la familia #{@last_name}"
  end
end

# ejecutar la clase Persona
pedro = Persona.new('Victor', 'Garrido', 22)
pedro.presentacion # Hola a todos, yo soy Victor Garrido

# ejecutar la clase Estudiante
pedro = Estudiante.new('Victor', 'Garrido', 22)
pedro.presentacion # Hola Profesor, soy el estudiante: Victor Garrido

# ejecutar la clase Profesor
pedro = Profesor.new('Victor', 'Garrido', 22)
pedro.presentacion # Hola Alumnos, soy el profesor: Victor Garrido

# ejecutar la clase Padres
pedro = Padres.new('Victor', 'Garrido', 22)
pedro.presentacion # Hola somos la familia Garrido