if puts File.exist?("creando_archivo.txt")

  File.open("creando_archivo.txt", "r") do |file|
    while linea = file.gets
      puts linea
    end
  end


  File.open("creando_archivo.txt", "r") do |file|
    file.each_line do |linea|
      puts linea
    end
  end

  texto = File.read("creando_archivo.txt")
  puts texto
  
  arreglo = File.readlines("creando_archivo.txt")
  puts arreglo.class

end