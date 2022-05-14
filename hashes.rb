# hashes: contiene cualquier tipo de objeto, existe tres formas de escribirlas:
# { "nombre " => "eva", "edad" => 23 } clave = valor

#tutor = { "nombre" => "eva", "edad" => 23, 35 => "dos", [] => "array" }

# puts tutor
# puts tutor["nombre"] # nos retorna eva(esto seria la llave)
# puts tutor[[]] # nos retorna array ya que la clave [] tiene como valor array

# tutor["cursos"] = 10 # pasarle otro valo y clave
# puts tutor["cursos"]



# *************************************************

#tutor = {:nombre => "eva", :edad => 23, :cursos => 10 } 3 es como un json en javascript
#puts tutor


tutor = { nombre: "eva", edad: 23, cursos: 10 }
# puts tutor[:nombre]

tutor.each do |clave, valor|
    #puts "En la clave: #{clave}, está guardado el valor: #{valor}"
end

# hashes o diccionarios:

hash = {perrito: :wuau, gato: :miau, pato: :cuac}

hash.each do |k,v|
    puts hash.values
end