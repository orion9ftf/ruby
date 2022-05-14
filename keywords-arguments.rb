
# def hola(nombre:"", edad: 0)
    
#     if edad > 30
#         puts "hola señora #{nombre}"
#     elsif edad < 30
#         puts "hola joven #{nombre}"
#     end
# end

# hola(nombre: "Ewi :)", edad: 32)
# hola( edad: 32, nombre: "Ewi :)")


# si queremos pasarla muchos parámetros usamos el splat operator:

def hola(nombre:"", edad: 0, **options)
    
    if edad > 30
        puts "hola señora #{nombre}"
    elsif edad < 30
        puts "hola joven #{nombre}"
    end
    puts options # devuelve un hash

    # acceder a una llave del hash:
    puts options[:animal_favorito] # gato
end

hola(nombre: "Ewi :)", edad: 32, color_favorito: "negro", animal_favorito: "gato")