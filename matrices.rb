# tiene tres dimensiones
arreglo = [1,2,3,4,5,[2,3,4,[4,6,7]]]
# arreglos internos, deben tener la misma cantidad de elementos
arreglo2 = [[1,2,3],[1,2,3]]
# matrices, todos sus elementos deben ser números
require 'matrix'

# asi se vería nuestra matriz:

# [
#     1 4 6
#     2 5 8
# ]

matriz = Matrix[[1,4,6],[2,5,8]]
# podemos iterarla
matriz.each do |i|
    #puts i
end

# **** diagonal para matrices
# [
#     1 4 6
#     2 5 8
#     2 5 8
# ]

matriz = Matrix[[1,4,6],[2,5,8],[2,5,8]]
matriz.each(:diagonal) do |i|
    #puts i
end # nos retornará: 1 5 8


# *** imprimir los elementos debajo de la diagonal *****

matriz = Matrix[[1,4,6],[2,5,8],[2,5,8]]

matriz.each(:strict_lower) do |i|
    # puts i
end # nos retornará: 2 2 5


# ***** retorna lo que esta encima de la diagonal *****
matriz = Matrix[[1,4,6],[2,5,8],[2,5,8]]

matriz.each(:strict_upper) do |i|
    #puts i
end # nos retornará: 4 6 8

# ***** matriz diagonal, para ello deben ser ceros a su alrededor
#  [
#    100
#    020
#    002
#  ]

matriz = Matrix[[1,0,0],[0,2,0],[0,0,2]] # algebra lineal
puts matriz.diagonal? # nos devuelve true


