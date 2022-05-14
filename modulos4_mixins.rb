class Humano
  
  def caminar
  end

  def hablar
  end
end

module Magia

  ENERGIA = 100
  
  def teletransportacion
    puts "teletransportación activada!"
  end
end


class Mago < Humano
  
  include Magia

  ENERGIA = 80

  def teletransportacion
    puts "se ha esfumado el mago"
    puts "energia: #{ENERGIA}"
  end
end


class Druida < Humano
  
  include Magia
end


class Guerrero < Humano
  
end

merlin = Mago.new
merlin.teletransportacion
