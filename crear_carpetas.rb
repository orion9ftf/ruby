#Dir.mkdir("carpeta-creada-con-ruby")
# File.rename("carpeta-creada-con-ruby", "renombrar-carpeta-creada-con-ruby")
# File.delete("renombrar-carpeta-creada-con-ruby")


#### recorrer el contenido que tiene la carpeta:

Dir.foreach('./') do |item|
  puts item
end