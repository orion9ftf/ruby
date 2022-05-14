def hola
    yield
end

nombre = "ewi"

#hola { puts "hola #{nombre}" }

hola do
    nombre = "Mateo"
    puts "hola #{nombre}"
end

puts nombre
