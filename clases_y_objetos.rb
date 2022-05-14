class Perrito
  
  def initialize(r)
    @raza = r
  end

  def ladrar
    puts "wuau wuau"
  end
end

perrito1 = Perrito.new("labrador")
#puts perrito1

perrito1.ladrar