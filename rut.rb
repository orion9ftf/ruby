El dígito verificador se calcula en función del número, esta operación se utiliza para evaluar la validez del RUT completo.

1.- Se procede a tomar el número de rut de derecha a izquierda, multiplicando cada dígito  por los números que componen la serie numérica 2, 3, 4, 5, 6 y 7
2.- Sumando el resultado de estos productos.
3.- Si se ha aplicado la serie hasta el final y quedan dígitos por multiplicar. 
4.- Al número obtenido por la suma del producto de cada dígito se obtiene el valor del modulo 11.
5.- El resultado final, se le convierte a un número o a la letra K, siguiendo esras reglas:

- Si el resultado es 11, el dígito verificador será 0 (cero).
- Si el resultado es 10, el dígito verificador será k.
- En otro caso, el resultado será el propio dígito verificador.

Ejemplo el RUT es: 5.544.332, para calcular el dígito verificador:

2 * 2 = 4
3 * 3 = 9
3 * 4 = 12
4 * 5 = 20
4 * 6 = 24
5 * 7 = 35
5 * 2 = 10
La suma de los productos es: 4 + 9 + 12 + 20 + 24 + 35 + 10 = 114

Aplicamos el módulo 11: 114 = 11*10 + 4 ahora calculamos 11-4 = 7
Entonces el dígito verificador es = 7
El rut quedaría así = 5.554.332-7

