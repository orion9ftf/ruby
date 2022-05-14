class Video
  attr_accessor :tiempo, :titulo

  def play
    puts "se inicio el video #{titulo}..."
  end

  def pause
    puts "se ha pausado el video #{tiempo}..."
  end

  def stop
    puts 'se ha apagado el video...'
  end
end

# 1. primero crar un objeto
video1 = Video.new
#puts video1.class
video1.titulo = 'clases de ruby'
#puts video1.titulo
video1.tiempo = 10

#2. segundo objeto
video2 = Video.new
video2.titulo = 'clases de POO'
video2.tiempo = 20
#puts video2.titulo
#puts video1.titulo
#puts video1.tiempo
#puts video2.tiempo
video1.play # se inicio el video clases de ruby...
video2.play # se inicio el video clases de POO...