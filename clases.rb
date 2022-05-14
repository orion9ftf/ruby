# POO
# definen el comportamiento que tendrán los objetos dentro del código

# las clases definen:
# atributos
# métodos
# campos
# eventos

class Video
  attr_accessor :minutes, :title #atributos

  def play
  end

  def pause
  end

  def stop
  end

end

#crear un nuevo objeto o instanciarlo un objeto de la clase video:

video_curso = Video.new
video_curso.title = "creando objetos"

video_curso2 = Video.new
video_curso2.title = "sus atributos"

puts video_curso.title #creando objetos
puts video_curso2.title #sus atributos