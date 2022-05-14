# variables locales:

def calcular_impuesto(cantidad)
    impuesto = cantidad * 0.05
    return impuesto
end

resultado = calcular_impuesto(50)
puts resultado # nos devuelve 2.5

resultado2 = calcular_impuesto(234)
puts resultado2.round(2)