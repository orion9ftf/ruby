notas = [10, 9, 4, 6, 9, 5, 6]

sum = 0

notas.each do |nota|
    sum += nota
end
# [10, 9, 4, 6, 9, 5, 6]

sum / notas.length
# => 7
# ********** este proceso es muy largo ***********

suma_notas = notas.inject{ |sum, nota| sum += nota } # inject lo que hace es tomar cada valor y guardarlo en un acumulador, inject va a necesitar dos cosas. un acumulador(sum) y un iterador(nota). quedaria as: |acumulador, iterador|
# => 49
suma_notas / notas.length
# o suma_notas / notas.length.to_f
# => 7

notas.delete(10) # esto borrará a todos los que coincidan con ese número.
# => 10
# => [9, 4, 6, 9, 5, 6]

# *********** si quiero borrar por posiciones *******

notas.delete_at(1) # solo le puedo pasar un indice para eliminar
# => 4

