module MiModulo
  

  class Cubo
    
    def initialize
    end

    def rotar
      puts "mira este cubo"
    end
  end


  class Esfera
    

    def initialize
    
    end

    def rebotar
    
    end
  end
end


module MiModulo2
  
  class Cubo
    
    def initialize
    end

    def rotar
      puts "rotar diferente..."
    end 
  end
end

module MiModulo3

  module Test
    
  end
    
end

un_cubo = MiModulo::Cubo.new
un_cubo.rotar

un_cubo2 = MiModulo2::Cubo.new
un_cubo2.rotar