class Auto
  @marca = "Chevrolet"

  def andar
    puts "Andando..."
  end

  class << self
    def marca
      @marca
    end

    def marca=(marca)
      @marca = marca
    end
  end
end

Auto.marca = "Nissan"
puts Auto.marca

bmw = Auto.new
bmw.andar