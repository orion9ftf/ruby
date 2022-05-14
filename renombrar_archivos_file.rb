archivo = File.new("creando_archivo.txt", "w")
archivo.close
File.rename("creando_archivo.txt", "creando_archivo2_renombrado.txt")


### eliminar un archivo ###
# File.delete("creando_archivo2_renombrado.txt")