class Mamifero
  attr_accessor :raza

  def initialize(r)
    @raza = r
  end
  
  def caminar
    puts "camina cosita chica"
  end

  def respirar
    puts "respira"
  end
end


class Perrito < Mamifero
  
  def initialize(r)
    super(r)
  end

  def ladrar
    puts "wuau wuau"
  end

  def respirar
    super
    puts "respira y jadea"
  end

end


class Gatito < Mamifero
  
  def initialize(r)
    super(r)
  end

  def maullar
    puts "miau miau"
  end
end

perrito = Perrito.new("labrador")
perrito.respirar
gatito = Gatito.new("siamés")
gatito.respirar

puts perrito.raza
puts gatito.raza