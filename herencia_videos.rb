class Video
  attr_accessor :titulo, :duracion

  def embed_video_code
    "<video></video>"
  end

  def setup(titulo)
    @titulo = titulo
  end
end

# sobreescribir u overwrite un método

class Youtube < Video
  attr_accessor :canal

  def embed_video_code
    "<inframe />"
  end

  def setup(titulo)
    super
    puts "hola soy super"
  end
end

class Facebook < Video
  attr_accessor :usuario
end

video = Youtube.new
video.canal = "ADLate"
video.titulo = "Mujeres TI"
puts video.embed_video_code
puts video.titulo
puts video.setup("Clase de herencia")

video1 = Video.new
puts video1.embed_video_code