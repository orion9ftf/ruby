def saludo
    puts "hola"
end

#saludo # el paréntesis es opcional saludo()


def saludo_2(nombre)
    puts "hola #{nombre}, ¿cómo estas?"
end

#saludo_2('Franco') # parámetro o argumento, es la información que se le envia dentro del parentesis

# En Ruby los parámetros no son opcionales.


def saludo3(nombre, edad)
    puts "hola #{nombre}!"
    puts "tu edad es #{edad} años"
end

# saludo3('Eva', 22)

# tabien podemos pasar como argumento o parámetro, una variable:
la_edad = 22

saludo3('Eva', la_edad)