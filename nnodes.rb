# Función que recibe un array de strings
# Recorrer el array
# Si la longitud de la palabra es par, imprimir el primer caracter
# Si es impar, imprimir el último caracter
# Si es primo, imprimir ambos
#longitud del string

# Puedes asumir que Prime.prime?(n) existe.

arr =  ['casa', 'perro', 'gato', 'arbol', 'caminos']
#         4        5        4       5         7
 
arr.each do |i|
   #puts arreglo = ((i.length) %2 === 0)  ? i[0] : i[-1]
   puts arreglo = ((i.length).even?) ? i[0] : i[-1]
   #puts arreglo = i.length
end




