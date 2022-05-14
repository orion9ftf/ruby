
# def hola_gente(personas)
#     personas.each { |personas| puts "Hola #{personas}" }
# end

# hola_gente( ["Eva", "Andres", "Carla"] )
# Hola Eva
# Hola Andres
# Hola Carla


# def hola_gente(*personas)
#     personas.each { |personas| puts "Hola #{personas}" }
# end

# hola_gente "Eva"#, "Andres", "Carla"
# hola_gente 23


# def hola_gente(mensaje,*personas)
#     personas.each { |personas| puts "#{mensaje} #{personas}" }
# end

# hola_gente "Hola ", "Eva", "Camilo"

# el metodo splat: recibe los argumentos que sea





def hola_gente(*personas)
    personas.each { |personas| puts "Hola #{personas}" }
end

nombres = ["Eva", "Andres", "Carla"]
hola_gente "Hola ",nombres # devuelve un array de argumentos
# Hola ["Eva", "Andres", "Carla"]


hola_gente "Hola ", *nombres # devuelve una lista de argumentos
# Hola Hola 
# Hola Eva
# Hola Andres
# Hola Carla
# Hola Hola 

