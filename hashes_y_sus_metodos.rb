
directorio = {} # hash vacío
directorio["Pepa"] = "23-56-43"
directorio["Mani"] = "23-57-78"
puts directorio.size # 2
puts directorio.length # 2
puts directorio.include?("Pepa") # true
puts directorio.empty? # false


directorio.each do |indice, valor|
  directorio[indice] = "+569 #{valor}"
  #puts "El indice es: #{indice} y su valor es: #{valor}"
end

puts directorio # {"Pepa"=>"+569 23-56-43", "Mani"=>"+569 23-57-78"}

