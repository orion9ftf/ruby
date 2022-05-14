arr1 = [123, 'eva', true, 3.14, nil, :dos]

arr1.push('cami') # agrega al final

arr1.pop # quita del final

arr1.unshift('hola') # agrega al principio dell array

arr1.shift # quita del principio del array

arr1.insert(3, 'soy el tres') # esto nos inserta en el medio del array sin eliminar al resto, se le pasan dos cosas: el indice(parametro) que ocupará y el valor.

arr1[-1] # esto retornará el último elemento contenido dentro del array ej: :dos

arr1.shuffle # esto nos desordenará el array por cada ejecución de shuffle que haga, pero solo se desordena para mostrarlo, sigue estando en su estado original

arr1.shuffle! # los métodos con signo de exclamación sobreesriben las variables donde nosotros la apliquemos.

arr1.sample # toma un elemento al azar y lo entrega

#arr1.sort # ordena el array pero teniendo solo un tipo de dato ej: numeros
arreglo %[b d a s f y t u i g n]
arreglo.sort # orden alfabetico
arreglo.reverse # invierte el orden
arreglo.include?('b') # true
arreglo.uniq # nos muestra los valores que no estan repetidos


arr1.reverse #invierte el array

arr1.reject{ |ele| ele.class == Integer }

arr1.select{ |ele| ele.class == String }

arr1.map{ |ele| ele.to_s } # lo convierte en string

arr2.inject(0){ |sum, num| sum += num }

# el .map y .collect son iguales

arr3 = [1,4,6,2,8,9,3,0]
# arr3.sort
# => [0, 1, 2, 3, 4, 6, 8, 9]

arr3.reverse # invierte el array

#print arr1

arr2 = [
    'nombre',
    123,
    true,
    false,
    'dos'
]

#print arr2

arr4 = ['b', 'a', 'h', 'm', 'j']
#  => ["b", "a", "h", "m", "j"]

arr4.sort
# => ["a", "b", "h", "j", "m"]

arr4.sort.reverse
# => ["m", "j", "h", "b", "a"]


