# initialize(constructor)
# POO
# definen el comportamiento que tendrán los objetos dentro del código

# las clases definen:
# atributos
# métodos
# campos
# eventos

class Video
    attr_accessor :minutes, :title #atributos

  def initialize(title) #puede reciir argumentos
    self.title = title
  end
  
  def play
  end

  def pause
  end

  def stop
  end

end

video_canciones = Video.new("cancion del alma")
puts video_canciones.title #cancion del alma