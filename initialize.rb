class Video
  attr_accessor :tiempo, :titulo


  def initialize(titulo)
    # este es el objeto, es lo mismo que llamarlo con self...puts "Gracias por iniciar"
    puts titulo
    self.titulo = titulo
  end

  def play
    puts "Se está iniciando el video #{titulo}..."
  end

  def stop
    puts "Se está deteniendo el video #{titulo}"
  end
end

video1 = Video.new("curso de ruby")