# maneras de recorrer un array:

arr4 = ["b", "a", "h", "m", "j"]

5.times do |i| # el times retorna un número
    print "#{arr4[i]}"
end
# esto nos retorna el array
# b a h m j  => 5

for i in 1..3 # el for retorna un rango
    puts arr4[i]
end
# nos retorna solo una parte de array que le pedimos un rango de indices

# a
# h
# m
# => 1..3


arr4.each do |ele| # una vez que lo recorra, va a retornar el array que recorrió.
    puts ele
end

# b
# a
# h
# m
# j
# => ["b", "a", "h", "m", "j"]

# nos vamos a traer todas las letras o podriamos tener nombres que comiencen con 'a'

arr4.each do |ele|
    if ele[0] == 'a'
        puts else
    end
end

# esto nos retornará la palabra que comience con la letra 'a'
# a
# => ["b", "a", "h", "m", "j"]

# ************************************************ 
# ahora para guardar los datos recopilados solo con la letra 'a', poemos guardarlos en una variable vacía:

names_with_a = []

arr4.each do |name| # el each sobreescribe el array original, podriamos usar el .map
    if name[0] == 'a'
        names_with_a.push(name)
    end
end
#  => ["b", "a", "h", "m", "j"] 
# 2.5.3 :060 > names_with_a ahora si pregunto por names_with-a, me retorna el array con el elemento buscado.
# => ["a"]

# *************************************************
# usando .map

r_names = arr4.map{|name| name if name[0] == 'a'}
# => [nil, "a", nil, nil, nil] 
# 2.5.3 :062 > r_names.compact! compact! lo que hace es sacar los nil del array y devolver un array ordenado.
# => ["a"]

# *************************************************
# vamos a entregarle un método que solamente filtre:
# select lo que hace es devolver un array donde solo se cumpla la condición que se le está evaluando.

2.5.3 :063 > arr4
=> ["b", "a", "h", "m", "j"] 
r_name = arr4.select{|name| name if name[0] == 'a'}
# => ["a"] 
2.5.3 :065 > r_name
# => ["a"] 

# para rechazar los nombres o las letras 'a'

not_r_name = arr4.reject{|name| name if name[0] == 'a'}
#  => ["b", "h", "m", "j"]

# ahora si le pido que me entregue una letra que no tengo, este me devolverá un [] vacio.

nothing_name = arr4.select{ |name| name if name[0] == 'x' }
# => []


