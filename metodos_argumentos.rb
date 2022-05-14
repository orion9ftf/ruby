# el metodo se diferencia ya que esta con la palabra def y el nombre del metodo
def square(x)
    # retorna el cuadrado
    x * x
end

puts square(2) # 4

def square2(x)
    return 0 unless x.is_a? Integer
        x * x
end

puts square2("3") # 0





def saludar
    puts "Hola!"
end

saludar()