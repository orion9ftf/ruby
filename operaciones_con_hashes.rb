tutor = { nombre: "eva", edad: 23, cursos: 10 }

# puts tutor.length # 3

# puts tutor.has_key?(:nombre) # true
# puts tutor.has_key?(:agua) # false
# puts tutor.keys # nombre edad cursos
# puts tutor.values # los valores eva 23 10
# tutor.clear # elimina todo lo que contiene el hash
# puts tutor.empty? # nos retornará true si efectivamente eliminamos todos los valores y sus llaves
# tutor.delete(:cursos) # esto eliminará la clave y valor en especifico
# puts tutor
# puts tutor.key("eva") # nos retorna nombre
# puts tutor.has_value?(23) # true si existe


# ***** convertir las claves en valores *******
# puts tutor.invert # {"eva"=>:nombre, 23=>:edad, 10=>:cursos}


# **** combinar dos hashes *****
user_info = { apellido: "matus", color: "rojo" }

puts tutor.merge(user_info) # {:nombre=>"eva", :edad=>23, :cursos=>10, :apellido=>"matus", :color=>"rojo"}



