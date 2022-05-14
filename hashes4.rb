nombre = "Ana"
# hashes = { 
#   'nombre' => nombre,
#   'apellido' => 'vidal',
#   :curso => '3C'
# }

hashes = { 
  :nombre => 'nombre',
  'apellido' => 'vidal',
  :curso => '3C'
}

hashes.each do |k, v|
  #puts "La clave o llave es: #{k} y su valor es: #{v}"
end


#puts hashes.has_key?(:nombre)
#puts hashes.keys
#hashes.clear
#puts hashes

############ hacer un merge con dos hashes #############
# si agregara :nombre 'juanito' se pierde la propiedad anterior
curso = {
  curso: 'Ruby', 
  academia: 'ADL',
  :generacion => 'g49'
}
puts hashes.merge(curso)

