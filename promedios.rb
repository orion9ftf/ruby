# la clase: File
# las rutas relativas nos sirven para: en caso de mverla de carpeta, las voy a encontrar igual al abrir el archivo

data = File.open('./notas.data').readlines
#data.close # una vez abierto hay que cerrarlo, sino queda abiertopara siempre

# puts data.class

#notas = data.split(', ') # nos entrega los numeros como string pero lo necestamos como integer

#suma = notas_i.inject(0){ |sum, nota| sum += nota }

#print (suma / notas_i.length).round(2)
notas = data
notas_arr = notas.map{ |nota| nota.chomp.split(', ')}

prom = []
notas_arr.each do |arr|
    total = arr.inject(0){ |sum, nota| sum += nota.to_f }
    pt = total / arr.length
    prom.push(pt.round(2))
end

# print prom # [8.83, 7.0, 8.14] las tres lineas tienen un promdio diferente

resultado = ''
#prom.map{ |prom| resultado += prom.to_s}
prom.map{ |prom| resultado += "El promedio es #{prom} \n" }

# crear un archivo externo
File.write('./promedio.data', resultado)

#puts resultado
