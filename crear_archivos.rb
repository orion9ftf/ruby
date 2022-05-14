=begin
archivo = File.new("creando_archivo.txt", "w")
archivo.puts('hola')
archivo.close

archivo = File.open("creando_archivo.txt", "a")
archivo.puts('otra linea')
archivo.close
=end

File.open('creando_archivo.txt', "a") do |file|
  file.puts('otra linea')
end