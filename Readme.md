# Ruby

 La ventaja que posee Ruby es que es un Lenguaje de Programación orientado a objetos, esto significa que podemos manipularlos, cambiar su valor, modificarlos a medida que se necesite, entre otros.

Existen otros tipos de Programación como por ejemplo;
- Programación estructurada.
- Programación por procedimiento.
- Programación orientada a objetos: ejemplo, esto es de manera abstracta, ya que un perro, un humano, un boton, una barra de navegación, un vehículo, en Ruby podría ser considerado un objeto.

El objeto tiene:

- Características, se le conoce como atributos y a los comportamientos le llamaremos Métodos.

Si tuvieramos un boton, en Ruby tendría atributos como: tamaño, color y un método sería que una vez que lo presiones, te lleve a otra página.

Las clases son las representaciones abstractas de los objetos, los objetos son creados a partir de las clases. Se le conoce como `instanciación`, cuando creamos una clase la creamos por ejemplo con 3 objetos diferentes.

La POO o Programación Orientada a Objetos, es la capacidad de abstraer un objeto cualquiera y darle cualidades, funciones o métodos a este. Un objeto no puede ser creada sin una clase como por ejemplo:

### Vehículo:

***Atributos:***

- color
- velocidad
- precio
- numeroPasajeros

***Métodos:***

- partir
- acelerar
- frenar
- tocarBocina

¿Qué es una clase en Ruby?

Va a ser una plantilla o molde, del cual vamos a crear objetos.

Va a estar conformada por:
- Atributos
- Métodos

Podemos tener la clase automovil

Ej:

***Corvette 68' => es de la clase Atomovil***

va a tener:

***Atributos:***

- color
- velocidad
- precio
- numeroPasajeros

***Métodos:***

- partir
- acelerar
- frenar
- tocarBocina

Ahora si tengo otro vehiculo:

***Camaro 68' => es de la clase Atomovil***

va a tener:

***Atributos:***

- color
- velocidad
- precio
- numeroPasajeros

***Métodos:***

- partir
- acelerar
- frenar
- tocarBocina

¿Por qué necesitamos crear una clase?

Porque nos ayuda a crear objetos en Ruby.

***************************************************
**Los métodos en Ruby se pueden clasificar en:**

* publicos => public (metodos de una clase).
* privados => private (pueden llamarse desde dentro de la clase).
* protegidos => protected (puede llamarse desde otras clases mientras estas sean del mismo tipo).


 Los métodos protegidos se pueden llamar desde fuera de la clase, siempre y cuando estas sean clases hijas de la clase donde esta definodo el método protegido!

### Métodos de clase:

 Las clases también son objetos.
*****************************************************

 Las variables de instancia, quiere decir que le pertenece a un objeto:

`@variable_de_instancia`

 Definición de nuestro método:

```rb
    class SoyObjeto
        @nombre_clase = "SoyObjeto"

        def self.nombre_clase
            @nombre_clase
        end
    end
```

  `puts SoyObjeto.nombre_clase`

  `=> SoyObjet`

  *******************************************************

 Reasignar el valor de la variable de instancia:

```rb
class SoyObjeto
  @nombre_clase = "SoyObjeto"

  def self.nombre_clase
    @nombre_clase
  end

  def self.nombre_clase=(nombre_clase)
    @nombre_clase = nombre_clase
  end
end

# puts SoyObjeto.nombre_clase # SoyObjeto
SoyObjeto.nombre_clase = "Podemos sustituirte!"
puts SoyObjeto.nombre_clase
```

`$ ruby [nombre_archivo.rb]`

`=> Podemos sustituirte!`


 `self.nombre_clase` : solo le pertenece a esa clase.


  Tabien la podemos definir con la siguiente sintáxis:

```rb
class SoyObjeto
  @nombre_clase = "SoyObjeto"

  class << self
    
    def nombre_clase
      @nombre_clase
    end
  
    def nombre_clase=(nombre_clase)
      @nombre_clase = nombre_clase
    end
  end
  
end
```


**************************************************

 Métodos que se ejecutan en el ActiveRecord de Rails:

    ```rb
        class User
        end

        User.find()
    ```
***Nos va a dovolver una colección de objetos que trae desde la db***

***************************************************

* Variable de instancia: `@variable`
* Variable de clase: `@@variable`, se puede acceder desde métodos de la clase y métodos del objeto.


 Si intentamos acceder utlizando variables de clase: 

```rb
class Video
  @@type = "video/mp4"
  
  def self.type_desde_clase
    p @@type
  end

  def type_desde_objeto
    p @@type
  end
end

Video.type_desde_clase #"video/mp4"
Video.new.type_desde_objeto # "video/mp4"
```

 Ahora si intentamos acceder a una variable de instancia:

```rb
class Video
  @type = "video/mp4"
  
  def self.type_desde_clase
    p @type
  end

  def type_desde_objeto
    p @type
  end

end

Video.type_desde_clase #"video/mp4"
Video.new.type_desde_objeto # nil
```


Vemos que en los métodos de clase no nos da mayor dificultad para su impresión en consola, mientras que en la ejecución desde el objeto retorna 'nil'.

*********************************************************

 En este caso se hereda la clase "soy de clase" a la clase hija YouTube.

 Y en el caso de la variable de instancia, nos entrega un `nil`

```rb
class Viyeo
  @@de_clase = "soy de clase"
  @de_instancia = "soy de instancia"
end

class YouTube < Viyeo
  def self.test
    p @@de_clase # nos va a imprimir la variable de clase
    p @de_instancia # nos va a imprimir la variable de instancia
  end
end

YouTube.test
# "soy de clase"
# nil
```
*****************************************************


 Las clase hija solo hereda las variables de clase:

```rb
    class Viyeo
  @@de_clase = "soy de clase"
  @de_instancia = "soy de instancia"

  def self.test
    p @@de_clase 
    p @de_instancia
  end
end

class YouTube < Viyeo
  def self.test
    p @@de_clase 
    p @de_instancia 
  end
end

Viyeo.test
YouTube.test
# "soy de clase"
# "soy de instancia"
# "soy de clase"
# nil
```

 Cambiar el valor de la variabe de clase:

```rb
    class Viyeo
  @@de_clase = "soy de clase"
  @de_instancia = "soy de instancia"

  def self.test
    p @@de_clase 
    p @de_instancia
  end
end

class YouTube < Viyeo
  def self.test
    @@de_clase = "la clase fue cambiada!"
    p @@de_clase 
    p @de_instancia 
  end
end

YouTube.test
# "la clase fue cambiada!"
# nil
Viyeo.test
# clase fue cambiada!"
# "soy de instancia"
```

***************************************************

### Polimorfismo:

 Múltiples objetos responde de diferentes maneras al mismo método.

 Ahora si creamos un ejemplo de Polimorfismo quedaría así:

```rb
class Video
    def play
    end
end

class Vimeo < Video
    def play
        p "inserta el reproductor de vimeo"
    end
end

class YouTube < Video
    def play
        p "inserta el reproductor de YouTube"
    end
end

videos = [
    YouTube.new,
    Vimeo.new,
    YouTube.new,
    YouTube.new,
    Vimeo.new
]

videos.each do |video| # es más sensillo recorrer la variable donde guardamos los valores a iterar.
    video.play
end
```

 Y nos respondería de la siguiente manera

```rb
  "inserta el reproductor de YouTube"
  "inserta el reproductor de vimeo"
  "inserta el reproductor de YouTube"
  "inserta el reproductor de YouTube"
  "inserta el reproductor de vimeo"
```

 En Ruby, el polimorfismo nos permite expresar lo mismo aún sin estando con herencia del padre(Duck typing).

*************************************************

 Métodos que reciben bloques:
- Debemos ocupar la palabra reservada `yield`

```rb
def hola
    yield
end

hola { puts "Hola, mi nombre es Juanito!" }
```

 Nos imprimirá:

  `Hola, mi nombre es Juanito!`

 También lo podemos llamar de la siguiente manera, y nos imprimirá exactamente lo mismo:

```rb
hola do
    puts "Hola, mi nombre es Juanito!"
end
```

 block_given?
- Nos dará true si el método recibe un bloque, de lo contrario dará un false.

```rb
def hola
    yield if block_given?
end

hola()
```

 Esto no nos entrega un error, pero tampoco un valor.

 Ahora si le enciamos un bloque, lo ejecuta:

```rb
def hola
    yield if block_given?
end

hola { puts "Hola mundo!" }
```

  `Hola mundo!`

 Podemos pasarle un argumento que inicie con ampersand(&), de la siguiente manera:

```rb
def hola &bloque
    bloque.call if block_given?
end

hola { puts "Hola mundo!" }
```

 Y también podemos seguir utilizando `yield`, en este segundo método tienes el bloque almacenado dentro de una variable '&bloque', lo  puedes llamar en otro método también.

```rb
def hola &bloque
    yield if block_given?
end

hola { puts "Hola mundo!" }
```

 Otro ejemplo de '&':

```rb
def hola &bloque
    otro_hola(&bloque)
end

def otro_hola &block
    puts "otro bloque"
    block.call
end

hola { puts "Hola mundo!" }
```

 Nos imprime lo siguiente:

```shell
  otro bloque
  Hola mundo!
```

**************************************************

### Distintas funcionalidades para `yield`

 Por ejemplo, necesitamos que nos imprima "Hola y su nombre", en 4 idiomas:

```rb
class Usuario
  attr_accessor :nombre

  def saludar
    yield(@nombre)
  end
end

Juanito = Usuario.new

Juanito.nombre = "Juanito"

Juanito.saludar { |nombre| puts "Hola #{nombre}" }
Juanito.saludar { |nombre| puts "Hello #{nombre}" }
Juanito.saludar { |nombre| puts "こんにちは #{nombre}" }
Juanito.saludar { |nombre| puts "Ciao #{nombre}" }

```

 Esto se vería de la siguiente manera:

```rb
Español:  Hola Juanito
Inglés:   Hello Juanito
Japonés:  こんにちは Juanito
Italiano: Ciao Juanito
```

### Los argumentos que recibe un bloque se enlistan en barras verticales que llamaremos pipe ||, si tenemos más de un argumento para pasarle, debemos separarlos por una coma ',' . Todo va a depender de cuántos argumentos esté recibiendo el bloque.

 Este bloque puede retornar un valor:

```rb
class Usuario
  attr_accessor :nombre

  def saludar_with
    saludo = yield(@nombre)
    puts saludo
  end
end

Juanito = Usuario.new

Juanito.nombre = "Juanito"

Juanito.saludar_with { |nombre| "Hola #{nombre}" }
Juanito.saludar_with { |nombre| "Hello #{nombre}" }
Juanito.saludar_with { |nombre| "こんにちは #{nombre}" }
Juanito.saludar_with { |nombre| "Ciao #{nombre}" }
```

 El valor que un bloque retorna es el resultado de la última expresión del bloque mismo.

 Podríamos cambir lo mismo a múltiples expresiones así:

```rb
Juanito.saludar_with do |nombre| 
  saludo = "Hello #{nombre}"
end
```

 Esto nos retornaría exactamente lo mismo:

  `Hello Juanito`

***Dentro de un bloque no se recomienda utilizar la palabra reservada `return`, ya que es exclusivo de los métodos.***

***********************************************

### El scope de las variables en un bloque:

 La variable 'nombre' no fue declarada dentro del bloque, ni tampoco fue enviada como argumento.

```rb
def hola
    yield
end

nombre = "Juanito"

hola { puts "hola #{nombre}" }

```

  `hola Juanito`

 El bloque tiene acceso a esta variable, ya que recibe el bloque desde donde se está ejecutando, entonces `hola { puts "hola #{nombre}" }`, también es parte del contexto donde se está ejecutando el bloque.

 Entonces el bloque también puede modificar esta variable:

```rb
def hola
    yield
end

nombre = "Juanito"

hola do
    nombre = "Mateo"
    puts "hola #{nombre}"
end

puts nombre
```

 Nos retorna:

```shell
hola Mateo
Mateo
```

***Cualquier modificación del bloque se va a ver reflejada incluso después de la ejecución del bloque.***

***************************************************

#### Proc

 Ejemplo de proc en un método

```rb
def hola &block
    block.call
end

hola { puts "hola a tod@s!" }
```

 La variable `&block`, no es un bloque, estamos recibiendo un `proc`, cuando le damos el nombre con un `&` esto es un proc. Cómo podemos saber si es un proc?

 La siguiente línea retorna esto: Este objeto es una instancia de la clase proc.

`puts block.class.name`

 Nos quedaría el código así:

```rb
def hola &block
    puts block.class.name
    block.call
end

hola { puts "hola a tod@s!" }
```

```rb
Proc
hola a tod@s!
```

 Cuál es la diferencia entre un  bloque y un proc?

- Los bloques no son objetos y los proc si lo son.
- Los proc pueden ser almacenados en variables y pasados como argumentos.
- Los bloques no se pueden almacenar en vaiables y no se pueden intercambiar entre métodos.
- Un método puede recibor un método, mientras que puede recibir múltiples proc, ejemplo:

```rb
def hola proc1, proc2
    proc1.call
    proc2.call
end

proc1 = Proc.new { puts "hola proc1" }
proc2 = Proc.new { puts "hola proc2" }

hola(proc1, proc2)
```

- Esto nos retornaría:

```shell
hola proc1
hola proc2
```

***Cuándo debo utilizar un bloque y cuándo debo utilizar un proc?***

 Por defecto debes utilizar un bloque a menos que, necesites almacenar el bloque en una variable, los bloques son más rápidos para ser utilizados.

***************************************************

 Las cadenas de texto en Ruby las podemos escribir con comillas dobles o cadenas simples.

```rb
puts "hola"

puts 'aló!'

puts "hola\s" + "mundo"

puts "hola a todos\s" * 3
```

 Las variables: es un pequeño espacio de memoria al cual le podemos dar un nombre, y dentro podemos almacenar un dato, datos, cadena de carácteres o arrays.

 La asignacion es poner un valor dentro de una variable. (poner un dato, dentro de un espacio de memoria).

 A una variable podemos modificar su valor en cualquier momento.

 Variables sencillas:

```rb
numero1 = 10
numero2 = 20

resultado = numero1 + numero2

puts resultado
puts "el resultado de la suma es #{resultado}"
```

 Suma y resta, concatenación:

```rb
numero1 = 10
numero2 = 20

resultado = numero1 + numero2
resultado2 = numero1 - numero2

puts resultado
puts "el resultado de la suma es #{resultado}"

puts "el resultado de la resta es #{resultado2}"
```

 Esto nos devolvería lo siguiente:

```shell
30
el resultado de la suma es 30
el resultado de la resta es -10
```

 Cuando la familia de operaciones aritméticas se agranda:

```rb
numero1 = 10
numero2 = 20

# suma
resultado = numero1 + numero2
puts resultado
puts "el resultado de la suma es #{resultado}"

# resta
resultado2 = numero1 - numero2
puts "el resultado de la resta es #{resultado2}"

# multiplicación
resultado3 = numero1 * numero2
puts "el resultado de la multiplicación es #{resultado3}"
```

 El resultado de todos estos puts nos daría lo siguiente:

```shell
30
el resultado de la suma es 30
el resultado de la resta es -10
el resultado de la multiplicación es 200
```

 Si tuviéramos que dividir ambas variables:

```rb
# división
resultado4 = numero2 / numero1
puts "el resultado de la división es #{resultado4}"
```

 Esto nos daría como resultado:

  `el resultado de la división es 2`

 Pero si dividieramos el valor de la variable menor por el valor de la variable mayor, esto nos devolvería un cero '0'

**************************************************

 Ahora si tenemos dos cadenas de texto almacenadas en variables diferentes y necesitamos concatenarlas, es más saludable interpolarlas, de la siguiente manera:

```rb
cadena1 = 'curso de '
cadena2 = 'Ruby'

resultado = "este es el #{cadena1} #{cadena2}"

puts resultado
```

 Esto nos devolverá el siguiente resultado:

  `este es el curso de  Ruby`

****************************************************************************

 El módulo, nos devuelve el sobrante de una división.

```rb
puts 30 / 7
puts 30 % 7
puts 30 / 7.0
```

* El primero nos devuelve `4`
* Mientras que el segundo nos devuelve `2`
* El tercer ejercicio nos devolverá: `4.285714285714286` ya que se está dividiendo por un número decimal, la ventaja es que nos entregará el resultado exacto de la operación.

*********************************************

 El tamaño de la cadena:

```rb
nombre = 'curso de Ruby!'

puts nombre.length
```

Esto nos devolverá el largo total de la cadena, incluyendo los espacios y simbolos que cuentan como caracteres: `14`

 Cómo definimos un método?

```rb
def name
    instruciones
end
```

 Para que este método se ejecute tengo que llamarlo!

```rb
def saludar
    puts 'Hola!'
end

saludar()
```

Nos devolverá: `Hola!`

Puedo tener más de un método en mi archivo y a ambos llamarlos para que se ejecute la acción a realizar:

```rb
def saludar
    puts 'Hola!'
end

saludar() 3 aunque no le dejemos los () igual lo ejecuta :)

def despedirse
    puts 'Adios!'
end

despedirse()
```

Esto nos devolverá el método llamado, según la acción definida:

```shell
Hola!
Adios!
```

*******************************************

### El alcande de las Variables (o scope):

Es aquí donde te encontrarás con dos tipos de alcances: las globales y las locales.

Ejemplo de variable global:

```rb
nombre = 'Juanito'

def saludar
    puts 'Hola!'
end

saludar

def despedirse
    puts 'Adios!'
end

despedirse
```

En este caso la variable con valor `Juanito`, la podemos utilizar en los métodos que siguen.

Mientras que las variables locales, sólo la podemos utilizar dentro del método.

```rb
def saludar
    nombre = 'Juanito'
    puts 'Hola!'
end

saludar

def despedirse
    puts 'Adios!'
end

despedirse
```

*******************************************

Los Parámetros o argumentos en Ruby:

Un parámetro o argumento, va a ser una variable que se va a definir localmente, junto con la función de un método.

```rb
def saludar(nombre)
    puts 'Hola!'
end

saludar
```

Esto nos arrojará un error ya que no le estamos dando el argumento en el método:


```shell
Traceback (most recent call last):
        1: from parametros_argumentos.rb:5:in `<main>'
parametros_argumentos.rb:1:in `saludar': wrong number of arguments (given 0, expected 1) (ArgumentError)
```

¿Cómo lo solucionamos?

Lo primero es que este método para funcionar necesita un argumento.

```rb
def saludar(nombre)
    puts "Hola #{nombre}"
end

saludar('Juanito')
```

Aquí vemos que lo solucionamos y a su vez lo interpolamos de maera eficiente.

Nos devuelve:  `Hola Juanito`

Esto en un pequeño ejercicio matemático se vería así:

```rb
def suma(num1, num2)
    resultado = num1 + num2
    puts resultado
end

suma(3,5)
```

Nos devolvería: `8`

Ahora la familia se nos agrandó, por tanto lo vemos así:

```rb
def suma(num1, num2)
    resultado = num1 + num2
    puts resultado
end


def resta(num1, num2)
    resultado = num1 - num2
    puts resultado
end

suma(3,5)
resta(3,5)
```

Esto nos devolverá: `8` y `-2`

************************************************

¿Qué es el retorno de valor?

Es una instrucción va a ser que nuestra función nos devuelve un valor, por ejemplo:

```rb
def suma(num1, num2)
    resultado = num1 + num2
    return resultado
end

valor = suma(3,5)
puts valor
```

Esto nos devuelve de manera ordenada: `puts "La suma es: #{valor}"`

Esto también funciona: `puts valor = suma(3,5)`

***NOTA: Para que `return` nos devuelva un valor, es necesario guardarlo en una variable y luego llamar a esa variable. El `return`, hace que nuestra función se comporte como variable.***

*********************************************

Métodos: 'Alias':

Un alias, va a ser un sobrenombre que se le va a aplicar a un método. Nos ayuda  indentificar de mejor manera, la sintáxis es: `alias nombre_nuevo nombre_viejo`.


Como por ejemplo:

```rb
def saludar
    puts 'Hola!'
end

# alias nuevo viejo
alias greetings saludar

greetings
saludar # con este nombre tambien funciona
```

Otro ejemplo de método con alias:

```rb
def saludar
    puts 'Hola!'
end

alias greetings saludar

def saludar
    puts 'Hola Amigue!'
end

greetings
saludar
```

Nos devuelve: 

```shell
Hola!
Hola Amigue!
```

**********************************************

***Valores booleanos:***

Es un tipo de dato el cual nos devuelve un valor 'verdadero' o un valor 'falso'.

Tenemos el `true` y el `false`, esto nos ayudará en las estructuras de control.

- falsos = false, nil
- verdadero = true, 0

***Operadores lógicos:***


```rb
< menor que
> mayor que
<= menor o igual
>= mayor o igual
== igual que
=== idéntico que
```

Nos ayudan a realizar comparaciones lógicas, ejemplo:

```rb
resultado = 6 < 9

puts resultado
```

Esto nos devuelve un: `true`

*******************************************

Condicionales:

```rb
if true
    puts 'verdadero'
else
    puts 'falso'
end
```

Esta es la estructura de la condicional, si la condición se cumple, va a ejecutar el código luego del `if` sino `else`, y así podemos agregar varias condiciones para las distintas operaciones que necesitemos ejecutar.

```rb
if 5 < 3
    puts 'sigue participando :('
elsif 5 > 3
    puts 'Haz ganado!'
end
```

Esto nos devuelve un `false` hasta que la condición se cumpla, como en este caso la condición dos se cumple, nos devuelve el resultado esperado.

Estructura condicional `unless`:

```rb
unless condition
  codigo
end
```

Ejemplo:

```rb
unless 5 == 45
    puts 'la condicion es falsa'
end
```

Estructura condicional `case`:

```rb
  case object # aquí va el valor o la variable que vamos a evaluar dentro de nuestra estructura
  when condition
      
  when 
      
  else
      
  end
```

Ejemplo:

```rb
valor = 2

case valor
when 0
    puts 'el valor es 0'
when 1
    puts 'el valor es 1'
else 2
    puts 'el valor es 2, ganaste!'
end
```

Estructura condicional `case` con rango:

```rb
valor = 2

case valor
when 0..10
    puts 'el valor esta entre 0 y 10'
when 11..20
    puts 'el valor esta entre 11 y 20'
when 21..30
    puts 'el valor esta entre 21 y 30'
when 31..40
    puts 'el valor esta entre 31 y 40'
end
```

Nos devolverá: `el valor esta entre 0 y 10`

```rb
valor = 25

case valor
when 0..10
    puts 'el valor esta entre 0 y 10'
when 11..20
    puts 'el valor esta entre 11 y 20'
when 21..30
    puts 'el valor esta entre 21 y 30'
when 31..40
    puts 'el valor esta entre 31 y 40'
end
```

Esto nos devolverá: `el valor esta entre 21 y 30`

********************************************

El peligro para la sociedad; los ciclos infinitos:

```rb
variable = 0

while variable < 50000
    puts 'Hola'
    variable = variable + 1
end
```

Esto ud no lo haga :(

```rb
while true
    puts 'hola'
end
```

### Ciclos

Es una estructura repetitiva, la cual nos permite repetir código que nos puede ayudar de manera dinámica.

Por ejemplo, si necesito imprimir la palabra 'Hola' muchas veces, los ciclos nos ayudarían de manera sencilla a ejecutarlo.

```rb
valor = 0

while valor < 10
  puts 'Hola'
  valor = valor + 1
end
```

Esto nos devolverá 10 veces el valor: `Hola`.

*********************************************

### Arreglos

Los Arreglos se rigen por algo llamado subindice, el cualnos permite acceder a un dato en específico que podemos llamar por un número de posición de la siguiente manera:

```rb
paises = ['Canadá', 'USA', 'México']

puts paises[1]
```

Esto no devolverá la posición `[1]` que corresponde a `USA`, este número de posoción lo sacamos contando desde cero `0` al número máximo de posiciones:

R: `USA`

Otro ejemplo:

```rb
numeros = [10, 20, 30, 40]

puts numeros.sum
```

Esto nos devolverá la suma de todos los número que se encuentran dentro del array: `100`

Podemos evitarnos las comas y las comillas con: `%w`

Así:

```rb
europa = %w{España Francia Italia Alemania}
puts europa
```

Nos devuelve: 

```shell
España
Francia
Italia
Alemania
```

Combinar los arrays:

```rb
paises = ['Canadá', 'USA', 'México']

numeros = [10, 20, 30, 40]

europa = %w{España Francia Italia Alemania}

datos = [80.2, paises, 'hola', europa]
puts datos
```

Esto nos devolverá:

```shell
80.2
Canadá
USA
México
hola
España
Francia
Italia
Alemania
```

Podríamos acceder a ellas con subíndice:

```rb
datos = [80.2, paises, 'hola', europa]
puts datos[2]
```

R: `hola`

El `%w` va a identificar a todo lo que se encuentra dentro de las llaves como cadena de texto, por ejemplo:

```rb
europa = %w{España numeros Francia Italia Alemania}
puts europa[1]
```

R: `numeros`

¿Qué pasó acá?

Pasa que `%w` nos identifica lo que se encuentra dentro de las llaves `{}`como cadenas de texto, no las separa ni las reconoce como variables diferentes, es por ello que para llamar una variable que contenga un array dentro, necesitamos llamarla de otro array sin la nomenclatura de `%w`.

********************************************
### Constantes

Las constantes son un pequeño espacio de memoria que nos permite almacenar datos dentro de este, el dato que va a contener no puede ser modificado.

Las constantes siempre deben estar escritas con letra mayúsculas miestras que las variables van con minúsculas.

Por ejemplo:

```rb
PI = 3.1416
PI = 3.14169

puts PI
```

Me va a mostrar el resultado de la constante pero me va a enviar una advertencia:

```shell
constantes.rb:5: warning: already initialized constant PI
constantes.rb:4: warning: previous definition of PI was here
3.14169
```

Otro ejemplo de constante sería el cálculo de un sueldo:

```rb
IVA = 0.16
sueldo = 200
subtotal = sueldo * IVA
total = sueldo - subtotal

puts total
```

R: `168.0`


*******************************************

### Interpolación dinámica:

La interpolación, es la mezcla de datos de manera ordenada que va entre comillas dobles con un `#` y con llaves `{}`, y con una sintáxis de la siguiente manera:

```rb
num1 = 12
num2 = 23

resultado = num1 + num2

puts "El resultado de la suma es: #{resultado}"

```

R: `El resultado de la suma es: 35`

*******************************************

### Normas de código

Ejemplo de la simpleza de la sintáxis de Ruby:

Esto sería imprimir en pantalla en Ruby: `puts 'Hola!'`

En c: `printnf('Hola!');`

En c++ : `cout << 'Hola!' << endl;`

En Ruby los paréntesis `()` son opcionales, y  los punto y comas `;` también.

********************************************

Ingresar datos a través de la consola de Ruby(irb):

```rb
puts 'cuál es tu nombre?'

nombre = gets.chomp

puts "Hola #{nombre}"
```

Esto nos devolverá:

```shell
cuál es tu nombre?
Juanito # esto es el nombre que ingresa la usuaria
Hola Juanito
```

***.chomp elimina el enter que di al ingresar el nombre.***

********************************************

El .reverse lo que hace es:

```rb
cadena = 'ruby desde cero'
puts cadena.reverse
```

R: `orec edsed ybur`

Nos devuelve la cadena de texto al revés.

El método .length sirve para contar los caracteres que posee el string:

`puts cadena.length`

R: `15`

El método .upcase, nos sirve para poner todos los carácteres en mayúsculas:

`puts cadena.upcase`

R: `RUBY DESDE CERO`


El método .downcase, nos convierte todos los carácteres en minúsculas:

`puts cadena.downcase`

R: `ruby desde cero`

El método .capitalize nos permite ordenar la sintáxis poniendo la primera letra en mayúscula. Esto nos podría ayudar cuando necesitamos llamar al nombre de la usuaria en la bienvenida del sitio web.

`puts cadena.capitalize`

R: `Ruby desde cero`

El método .slice nos permite mostrar un parte de la cadena, a este método se le debe pasar un número indicando la posición de letra que necesito extraer.

`puts cadena.slice(5)`

R: `d`

Si llamamos a .slice con otro parámetro de búsqueda comopor ejemplo, si le decimos que parta en el carácter 0 al 4 nos mostrará la palabra 'ruby'

`puts cadena.slice(0,4)`

R: `ruby`

*********************************************

### El método bang!

Es un método peligroso, ya que va a modificar el objeto.

Hasta aquí todo bien:

```rb
cadena = 'ruby desde cero'
resultado = cadena.upcase

puts resultado
puts cadena
```

Esto nos devuelve:

```shell
RUBY DESDE CERO
ruby desde cero
```

Pero si lo modifico el método upcase con '!' nos entrega esto:

```rb
cadena = 'ruby desde cero'
resultado = cadena.upcase!

puts resultado
puts cadena
```

R:

```shell
RUBY DESDE CERO
RUBY DESDE CERO
```

Lo peligroso es que modifica no solo el resultado, sino que el método 'cadena' en el objeto original :(

***********************************************

### Argumentos variables


```rb
def nombres(arg1, arg2,arg3)
    puts arg1
    puts arg2
    puts arg3
end

nombres('Ana', 'Camilo', 'Antonia')
```

O tambien podemos pasarle varios argumentos de la siguiente manera:

```rb
def nombres(*args)
  puts args
end

nombres('Ana', 'Camilo', 'Antonia')
```

En ambos casos nos imprimirá en consola:

```shell
Ana
Camilo
Antonia
```
************************************************


### Argumento o parametro opcional:

```rb
def nombres(nom1, nom2)
    puts "El nombre 1 es: #{nom1}"
    puts "El nombre 2 es: #{nom2}"
end

nombres('Ana', 'Camila')
```

Nos devuelve:

```shell
El nombre 1 es: Ana
El nombre 2 es: Camila
```

**************************************************

### Rangos

Los rangos, son la sucesión de números la cual necesitamos ejeutar con un orden específico. Los rangos se definen dentro de paréntesis `()`.

¿Cómo convertir un rango en array?

`puts (1..8).to_a`

R: 

```shell
1
2
3
4
5
6
7
8
```

Y ahora a la inversa:

`puts (-10..-1).to_a`

```shell
-10
-9
-8
-7
-6
-5
-4
-3
-2
-1
```
Los rangos van a ser ejecutados siempre de positivos. Si tengo `puts (10..1)`, esto no se va a ejecutar.


```rb
rango = (1..5).to_a

puts rango.min # 1
puts rango.max # 5
puts rango.include?(4) # true
puts rango.include?(7) # false
puts (3..6) === 5 # true / acá le estoy preguntando si el número 5 está incluido dentro de ese rango.
puts (3..6) === 50 # false
```

***************************************************

### Ejemplo de una clase:

```rb
class Automovil
    # atributos
    def initilize(color, marca)
      @color = color 
      @marca = marca
    end

    
    # metodos
    def partir
      puts 'el automovil se ha encendido'
    end

    def apagar
      puts 'el automovil se ha apagado'
    end
  
end
```

Le podemos agregar lo siguiente para que funcione esta clase 

```rb
corvette = Automovil.new('negro cereza', 'chevrolet')
corvette.partir
puts corvette.partir.methods.sort
```

Le puedo preguntar que tipo de clase es: `puts camaro.class`, este me responderá que pertenece a: `Automovil`.

Los accesores nos van a permitir, habilitar los atributos si necesitamos llamarlos, sobresscribirlos o utilizarlos fuera de la clase.

Para acceder a la marca y el color, debemos definirlos previamente:

```rb
    def color
      @color
    end

    def marca
      @marca
    end
```
El llamdo:

```rb
puts corvette.marca
puts corvette.color
```

La respuesta a ese llamado sería algo así:

```shell
chevrolet
negro cereza
```

O podemos leer los datos de la siguiente manera:

`  attr_reader :color, :marca`

Esto nos devolvería los siguiente:

```shell
chevrolet
negro cereza
```

Para cambiar el valor o atributos, podemos hacerlo con `attr_writer :color, :marca`


```rb
corvette.marca = 'toyota'
puts corvette.marca
```

Nos devolverá: `toyota`

*************************************************

### Herencia

Vamos a heredar el comportamiento de la clase padre, en este caso, la `class Automovil` está heredando todo sus atributos y métodos.

```ruby
class Vehiculo
    # atributos
  def initialize(color, marca)
    @color = color 
    @marca = marca
  end

  # metodos
  def partir
    puts "el #{@marca} se ha encendido"
  end

  def apagar
    puts "el #{@marca} se ha apagado"
  end
end

class Automovil < Vehiculo
end

corvette = Automovil.new('negro cereza', 'chevrolet')
puts corvette.partir
```

Esto nos devolverá:  `el chevrolet se ha encendido`

Podriamos tener otra clase que también herede de Vehiculo:

```ruby
class Motocicleta < Vehiculo

end
```

Y llamarla para que ejecute los métodos y aributos heredados:

```ruby
# objeto 2
harley = Motocicleta.new('negro', 'harley')
puts harley.partir
```

Nos retornará: `el harley se ha encendido`

¿Se puede sobrescribir un método?

Claro, la podemos acomodar a nuestras necesidades y requerimientos, por ejemplo:

```ruby
class Motocicleta < Vehiculo
  def partir
    puts "La #{@marca} se ha encendido"
  end

end

# objeto 2
harley = Motocicleta.new('negro', 'harley')
puts harley.partir

```

Esto nos devolverá lo siguiente: `La harley se ha encendido`

Otro ejemplo de una nueva clase con sumétodo definido a medida:

```ruby
class Autobus < Vehiculo
  def partir
    puts "El Autobus de marca #{@marca} se ha encendido"
  end
end

# objeto 3
mercedes = Autobus.new('blanco', 'mercedes')
puts mercedes.partir

```

Nos da como resultado en consola: `El Autobus de marca mercedes se ha encendido`

***********************************************

### Sobrecarga de métodos en Herencia

Esto conlleva a que el segundo método definido sea llamado y no el primero como por ejemplo:

```ruby
class Automovil < Vehiculo
  def partir
    puts "El vehiculo de marca: #{@marca} se ha encendido"
  end

  def partir
    puts "El vehiculo ha partido en X segundos!"
  end
end

# objeto 1
corvette = Automovil.new('negro cereza', 'chevrolet')
puts corvette.partir
```

Esto nos devuelve en consola como resultado: `El vehiculo ha partido en X segundos!`


Cuando sobrecargas un método, puedes agregarle parámetros o argumentos, así:

```ruby
  def partir(seg)
    puts "El vehiculo ha partido en #{seg} segundos!"
  end

# objeto 1
corvette = Automovil.new('negro cereza', 'chevrolet')
puts corvette.partir(5) # El vehiculo ha partido en 5 segundos!
```

No nos enviará error pero solo ejecutará el que le esté pasando parámetros.

*********************************************

### Modificar las clases:

```ruby
class String
    def numero_caracteres
        puts self.size
    end
end

texto = "Ruby desde cero"
texto.numero_caracteres # 15
```

***********************************************

### Crear, escribir y  leer archivos:

File.open() nos va a permitir abrir un archivo y llamarlo para luego poder leerlo y trabajar con sus datos.

Si tengo por ejemplo: `File.open('nombreArchivo.txt', 'r')`, esto nos dice que el archivo con extensión `.txt` solo va a poder ser leido `(r = read)`. Si quisiéramos editarlo tendríamos que poner: File.open('nombreArchivo.txt', 'w'). Pero si necesitamos editar y leer el archivo, lo podemos hacer con `File.open('nombreArchivo.txt', 'r+')`.

***Lo peligroso de usar `w` es que rescribe el archivo y entrega uno nuevo, que posea el mismo nombre y con datos agreagdos o editados.***

Esto nos creará un archivo con el nombre que le demos dentro del paréntesis:

```ruby
File.open('hola.txt', 'w') do |texto|
  texto.puts "archivo creado desde Ruby"
end
```

Abrir y leer archivos:


Usamos un ciclo `while` ya que necesitamos leer todas la líneas de ese archivo.

```ruby
File.open('hola.txt', 'r') do |text2|
  while linea = text2.gets
    puts linea
  end
end
```

 Esto hará que nuestro archivo creado en el ejercicio anterior, nos muestre el texto que contiene dentro, y leer todas las líneas de texto en el.

 Esto nos imprime en consola su contenido.

****************************************

### Modificadores de accesos:

Estos van a permitir el acceso a una variable, a un elemento, a un objeto.

Estos pueden ser:

* Public: o publicos, todos los elementos ue tenga un nivel de acceso de carácter público, vas a poder acceder a ellos desde cualquier parte.

* Private: o privados, es un modificador de accesos que va a hacer que todo sea privado, y solo se va a acceder a el desde la clase que se encuentra. 

* Protected - los métodos protegidos pueden ser usados únicamente por objetos de la misma clase y subclases, a las que pertenece el método; pero nunca por el propio objeto. Por así decirlo, el método sólo lo pueden usar los otros miembro de la familia.

Ejemplo de un Modificador público:

```ruby
class Vehiculo
    # atributos
  def initialize(color, marca)
    @color = color 
    @marca = marca
  end

  # metodos
  public
    def partir
        puts "el #{@marca} se ha encendido"
    end
  public
    def apagar
        puts "el #{@marca} se ha apagado"
    end
end

# objeto 1
corvette = Vehiculo.new('negro cereza', 'chevrolet')
puts corvette.partir
```

Este se ejecutará sin maor problemas: `el chevrolet se ha encendido`.

También podemos escribirlo así: `public :partir, :apagar`.

Ejemplo de un método privado:

```ruby
class Vehiculo
    # atributos
  def initialize(color, marca)
    @color = color 
    @marca = marca
  end

  # metodos
  public
    def partir
        puts "el #{@marca} se ha encendido"
    end
  private
    def apagar
        puts "el #{@marca} se ha apagado"
    end
end

# objeto 1
corvette = Vehiculo.new('negro cereza', 'chevrolet')
puts corvette.partir
puts corvette.apagar
```

La primera llamada de `puts corvette.partir`, se estaría ejecutando sin mayor complicaciones, mientras que el segundo llamado `private`me da un error en la consola:


```ruby
el chevrolet se ha encendido

Traceback (most recent call last):
modificador_publico.rb:22:in `<main>': private method `apagar' called for #<Vehiculo:0x0000557217f172a8> (NoMethodError)
```

***Simbolos en Ruby:***

```ruby
puts "hola".object_id # 47238734767360
puts "hola".object_id # 47238734767220

puts :hola.object_id # 1048348
puts :hola.object_id # 1048348
```

Los objetos poseen un id diferentes aunque llame al mismo objeto más de una vez, mientras que los simbolos no cambian su id, aunque lo llamemos muchas veces.

********************************************

### Hashes:

Hashes o arreglos asociativos. Podemos tener dentro de este, una llave y su valor. Ejemplo:

```ruby
autos = {
    'corvette'=> 'chevrolet',
    'march' => 'nissan',
    'fiesta' => 'ford'
}

puts autos['fiesta']
```

Esto nos devolverá el valor de la marca del vehículo: `ford`.

******************************************

### Imprimir la hora y zona horaria:

%H = nos imprimirá la hora

%M = nos imprimirá los minutos

%S = nos imprimirá los segundos

%Z = nos imprimirá la zona horaria


***Ejemplo:***

```ruby
t = Time.now
puts t

puts t.strftime("Son las %H:%M %Z")
```

***Para mostrar la fecha:***

%d = muestra el día

%m = muestra el mes

%Y = muestra el año

***Ejemplo:*** 

```ruby
t = Time.now

puts t.strftime("Hoy es %d/%m/%Y")
```

Nos devuelve la fecha actual: `Hoy es 06/07/2021`

***El día de la semana:***

%A = nos devuelve el día de la semana.

```ruby
t = Time.now

puts t.strftime("%A")
```

Nos devolverá en día de la semana en inglés: `Tuesday`.


***El mes del año:***

%B = nos sirve para mostrar el mes del año:

`puts t.strftime("%B")`

Esto nos mostrará: `July`.

*************************************************************************************************

### Crear un archivo .html desde File.write con Ruby:

* Primero crear un archivo con extensión .rb, luego escribir el siguiente código:

```ruby
html = '<html>
            <head>
            <body>
                <h1>Creado desde File.write con ruby</h1>
                <p>desde el método File</p>
            </body>
        </html>'

File.write('./index.html', html)
```

Sólo nos soporta dos argumentos: `File.write('./index.html', html)`, el nombre que llevará el archivo y el tipo de archivo `.html`

#### Creando un archivo .html pero con style .css:

Nuestro código:

```ruby
html = '<html>
            <head>
            <body>
                <h1 style="text-align: center; color: red;">Creado desde File.write con ruby</h1>
                <p>desde el método File</p>
                
                <ul>'
10.times do |i|
    html += "<li>item número #{i}</li>"
end

foot =      '</ul>
            </body>
        </html>'
index = html + foot

File.write('./index.html', index)
```

El archivo `index.html` quedaría así:

```ruby
<html>
    <head>
    <body>
        <h1 style="text-align: center; color: red;">Creado desde File.write con ruby</h1>
        <p>desde el método File</p>
        
        <ul>
          <li>item número 0</li>
          <li>item número 1</li>
          <li>item número 2</li>
          <li>item número 3</li>
          <li>item número 4</li>
          <li>item número 5</li>
          <li>item número 6</li>
          <li>item número 7</li>
          <li>item número 8</li>
          <li>item número 9</li>
        </ul>
    </body>
</html>
```

*******************************************************

#### Vamos a hacer dos métodos:

```ruby
def head
    '
    <!doctype html>
<html lang="en">
  <head>
    <title>Insertar datos con Ruby</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"  integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

  </head>
  <body>
    '
end


def foot
    '
    <!-- Bootstrap JavaScript Libraries -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
  </body>
</html>
    '
end
```

Vamos a separar responsabilidades:

De hecho, vamos a hacer que Ruby nos cree tantos botones como elementos yo le entregue.

Esto hará que el método `botones`, nos cree de maner aleatoria los btn con los colores que le entregamos en el array.


```ruby
def botones(array)
    botones = ''
    colors = ['warning', 'danger', 'info', 'success', 'secondary', 'warning']
    array.each do |name|
        num_color = rand(0..5)
        botones += "<button type='button' class='btn  btn-#{colors.sample}'>#{name}</button>"
    end
    return botones
end
```

La web, la vamos a generar en un archivo a parte, llamado `web.rb`, este solo tendrá la función de crear la `web`.

***NOTA: El `require_relative`, nos ayuda a traernos las herramientas que hemos creado, e importarlo a otros archivos. Nos es necesario parasarle la extensión `.rb`, ya que solo funciona para Ruby.***


***NOTA: Cuando necesitemos implementar herramientas de Ruby en nuestro código, nos ayudará el: `require`, como por ejemplo, implementar una gema y llamar en los archivos.***


LLamar al archivo que contiene nuestras herramientas, el llamado es así: `require_relative 'componentes`.


Esto va a generar tantos botones como información reciba:

En el archivo: `web.rb`

```ruby
require_relative 'componentes'

text_buttons = ['ver mi página', 'ir a:', 'comer', 'reclamos', 'jugar']

my_buttons = botones(text_buttons)

index = head() + my_buttons + foot()

File.write('./web_index.html', index)
```

Si queremos que nuestros botones se vean relativamente ordenados, lo podemos hacer así:

```ruby
def botones(array)
    botones = '<div class="row">'
    colors = ['warning', 'danger', 'info', 'success', 'secondary', 'warning']
    array.each do |name|
        botones += '<div class="col">'
        botones += "<button type='button' class='btn  btn-#{colors.sample}'>#{name}</button>"
        botones += '</div>'
    end
    botones += '</div>'
    return botones
end
```

***NOTA: En Todos los lenguajes vamos a utilizar: ciclos, métodos, condicionales.***

******************************************

Las variables, son como los contenedores, que nos van a  permitir almacenar valores como: `string, boolean, number, nil`.

```ruby
=begin
comentario
de lineas
=end

# comentario de una línea
```


***************************************************************************************************************

### Operadores Lógicos:

```rb
Operados &&(and, y)

expresion1 expresion2 respuesta

verdadero   verdadero   verdadero
verdadero  falso        falso
falso      verdadero    falso
falso      falso        falso
```


```rb
Operados || (or, o)

expresion1 expresion2 respuesta

verdadero  verdadero    verdadero
verdadero  falso        verdadero
falso      verdadero    verdadero
falso      falso        falso
```

******************************************************************************************************************

Carácteres de escape: `puts "has seleccionado \"arroz\""`. Estas barras invertidas nos sirven para permitirnos incluir comillas dobles entre una palabra y otra o más bien envolver una palabra en comillas.

Ciclo `while`:

```rb
# imprimir del 1 al 10

i = 1

while i <= 10
    puts i
    i = i + 1
end
```

***Until*** 'hasta que'

```rb
i = 0

until i > 10
    puts i
    i += 1
end
```

Nos devolverá: 

```shell
0
1
2
3
4
5
6
7
8
9
10
```
***************************************************************************************************************************

### Next:

Entre el 4 y 5 nos damos cuenta de que nos entrega un pequeño salto en las líneas. El ciclo pasa a la siguiente repetición.

```rb
i = 1

while i <= 10
    puts i
    i = i + 1
    if i == 5
        next
    end
    puts "última linea de ciclo"
end
```

Esto nos devuelve:

```shell
1
última linea de ciclo
2
última linea de ciclo
3
última linea de ciclo
4
5
última linea de ciclo
6
última linea de ciclo
7
última linea de ciclo
8
última linea de ciclo
9
última linea de ciclo
10
última linea de ciclo
```

***NOTA: Los ciclos nos ayudan a repetir código pero por intermedio de una condición; `while`, `until`, `break`: nos permite detener un bucle repentinamente. `next`: nos permite terminar una repetición antes de que toda la linea sea ejecutada.***

****************************************************************************************************************************

## Ciclo `while`:

Ejemplo: 

Necesito crear un programa que el señor usuario ingrese una lista de artículos de compra, si el usuario desea continuar debe ingresar: `s`, de lo contrario debe ingresar: `n`.

Antes que hacer cualquier acción, analicemos esto:

1° Primero necesitamos que el usuario ingrese un producto o artículo, para comenzar el ciclo.

2° Si el usuario necesita continuar con la lista de compras, debe poder ingresar en consola `s`.

3° Si el usuario ya no necesita ingresar más productos al carrito, debe poder ingresar una `n`.

4° Se debe registrar los productos ingresados, como por ejemplo almacenarlos en variables.

5° Que el usuario pueda ver impreso lo que ingresó en consola.

```rb
lista = []

continuar = true

while continuar == true
    puts "Ingresa un producto a tu lista de compras"
    producto = gets.chomp
    lista.push(producto)
    puts "Deseas agregar al carrito? (s) o salir (n)"
    respuesta = gets.chomp
    if respuesta == "s"
        continuar = true
    else
        continuar = false
    end
end


puts "Tu lista de productos ahora incluye: #{lista}"
```


Esto nos imprimirá : 

```shell
Ingresa un producto a tu lista de compras
cafe
Deseas agregar al carrito? (s) o salir (n)
s
Ingresa un producto a tu lista de compras
pan
Deseas agregar al carrito? (s) o salir (n)
n
Tu lista de productos ahora incluye: ["cafe", "pan"]
```

Mientras la variable `continuar`, se mantenga verdadera, el ciclo continuará, si el usuario decide no continuar, simplemente se le preguntará en cadaiteración  si `s` o no `n`.

************************************************

## Arreglos y sus métodos:

```rb
paises = [
    "México", 
    "Chile", 
    "Japón", 
    "Alemania", 
    "Canadá", 
    "Perú"
]

puts paises.size # 6
puts paises.length # 6
puts paises.count # 6
puts paises.first # México
puts paises.last # Perú
puts paises.empty? # le decimos si esta vacio, nos devuelve un: false
puts paises.include?("Chile") # true

paises.push("Bolivia") # lo agrega al final del array
paises << "Argentina" # lo agrega al final del array

puts paises
```

Para inicializar un arreglo podemos utilizar ambos casos pero es mejor utilizar los `[]`:

```rb
arreglo = []
arreglo = Array.new
```

*************************************************

## Iteraciones con arreglos:

1- Esta iteración va a recorrer el arrego y lo mostrará con un gión antes del nombre:

```rb
paises = [
  "México", 
  "Chile", 
  "Japón", 
  "Alemania", 
  "Canadá", 
  "Perú"
]

 paises.each do |i|
   puts "- #{i}"
 end
```

Resultado de la iteración:

```shell
- México
- Chile
- Japón
- Alemania
- Canadá
- Perú
```

2- Tengo un arreglo de número el cual necesito recorrer y también mostrarlo, pero multiplicando en cada vuelta de la iteración cada número multiplicado por `5`:

```rb
num = [1,2,3,4,5,6,7,8]

num.each do |i|
  puts i * 5
end
```

Esto nos mostrará: 

```shell
5
10
15
20
25
30
35
40
```

3- Supongamos que tenemos un juego en el cual, se pierde 5 puntos por cada iteración:

```rb
enemigos_vidas = [18, 12, 5, 14]

enemigos_vidas.map! do |i|
    i = i -5
end

puts enemigos_vidas
```

Esto nos devolverá:

```shell
13
7
0
9
```

***************************************************************************

## Ejercicio práctico:

1- Dado el siguiente arreglo: 

hermanos = ["María", "José", "Pedro"]
Crea un programa que imprima en pantalla la siguiente oración: 

Éramos 3 hermanos, José era el mayor, María nuestra hermana consentida, y Pedro el más pequeño entre nosotros
Los nombres por supuesto deben provenir del arreglo.

Una de las miles de maneras de resolverlo:

```rb
hermanos = ["María", "José", "Pedro"]

m = hermanos[0]
j = hermanos[1]
c = hermanos[2]

resul = m + j + c

puts resul = "Éramos tres hermanos, #{j} era el mayor, #{m} nuestra hermana consentida, y #{c} el más pequeño entre nosotros"
```

2- Ejercicio: Temperatura promedio
El siguiente arreglo representa las temperaturas de cada día de la semana pasada (grados centígrados):

temperaturas = [24,30,29,32,24,30,31]
Crea un programa que calcule la temperatura promedio de toda la semana, a partir de los valores del arreglo.

```rb
temperaturas = [24,30,29,32,24,30,31]

promedio = temperaturas.sum / temperaturas.size.to_f

puts promedio.round(1)
```

R: `28.6`


**************************************************************

## Rangos:

Los rangos pueden estar compuestos por una secuencia numérica o por una secuencia de letras, como por ejemplo:

`"a".."z"` o 1..10

Esto hará que Ruby, vaya a buscar letra por letra y mostrarlas de la `a` hasta la letra `z`, nota que para mostrar las letras Ruby necesita que se las entregues como cadena de caracteres, o los número desde el 1 hasta el 10  (9).

Podemos guardar los rangos en variables:


```rb
digitos = (-4..9).to_a

puts digitos
```

Por ejemplo, esto nos devolverá lo siguiente:

```shell
-4
-3
-2
-1
0
1
2
3
4
5
6
7
8
9
```


También lepodemos preguntar si incluye un número específico:

```rb
digitos = (-4..9).to_a

puts digitos.include?(3)
```

Esta nos devolverá un valor `boolean`, ya que `include?` devuelve un verddadero o falso según corresponda:

R: `true`

### También podemos preguntar por el número menor o mayor del rango:


```rb
digitos = (-4..9).to_a

puts digitos.min
puts digitos.max
```

Nos devuelve el valor mayor dentro del rango: `9` y el menor: `-4`.


***Se puede iterar o recorrer con `each`:***

```rb
digitos = (-4..9).to_a

digitos.each do |i|
    print "#{i},"
end
```

Este recorrido nos devuelve:

`-4,-3,-2,-1,0,1,2,3,4,5,6,7,8,9,`

Ahora podemos recorrer un rango de letras:

```rb
("b".."m").each  do |i|
    print "#{i},"
end
```

Nos da: `b,c,d,e,f,g,h,i,j,k,l,m,`

#### Método step:

Nos permite recorrer de 5 en 5 o el número que necesitemos, podría haber sido de 2 en 2:


```rb
(0..50).step(5).each do |num|
    puts num
end
```

A esto se le llama encadenamiento de métodos, ya que puedes poner un método y otro al lado.


El método step nos devolverá esto:

```shell
5
10
15
20
25
30
35
40
45
50
```

#### Dos puntos v/s tres puntos en los rangos: 

Cuando pasamos el rango con dos puntos `..`, le estamos diciendo que incluya el número inicial y el número final, ejemplo: `1..5`: quedaría: `1 2 3 4 5`.

Pero si le pasamos tres puntos: `...`, nos incluye solo el número inicial, y excluyendo el número del final del rango, ejemplo: `1...5`, quedará algo así: `1 2 3 4`.

***Convertir los rangos en arreglos:***

El `to_a`, nos permite convertir en rango en un arreglo.

Usemos la consola interactiva de Ruby:

```shell
2.5.3 :001 > (1..10).to_a
  => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] 
```

También podriamos guardarlo en una variable, como por ejemplo:

```rb
arreglo = (2..20).to_a
puts arreglo
```

o también desde la consola interactiva de Ruby:

```shell
2.5.3 :001 > arreglo = (2..15).to_a
 => [2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
```

***Ahora si quisiéramos ver solo una parte del arreglo:***

NOTA:En vez de pasarle un arreglo, le pasamos un rango de índices dentro del areglo

```rb
arreglo = (2..20).to_a

puts arreglo[0..5]
```

R:

```shell
2
3
4
5
6
7
```

***Rangos***

  * Secuencia de letras
  * Secuencia de números
- Iteraciones con rangos
- Conversión de rango a arreglo.
- Utilizar rangos como índice de arreglos.

***********************************************************

### Los atributos los definimos a través de variables de instancia

Este sería un objeto creado sin atributos:

```rb
class Perrito
  
end

perrito1 = Perrito.new
```

Le agregamos variables de instancia, con un constructor:

```rb
class Perrito
  
  def initialize(r)
    @raza = r
  end
end

perrito1 = Perrito.new("labrador")
```

Diferencia entre: `@raza` y `r`:

- `@raza`: es una variable de instancia.
- `r`: variable local.


Vamos a realizar otro método al cual llamaremos ladrar:

```rb
class Perrito
  
  def initialize(r)
    @raza = r
  end

  def ladrar
    puts "wuau wuau"
  end
end
```

Si creamos el constructor y luego llamamos al objeto y le asignamos el método `ladrar`, esto nos devolverá:


R: `wuau wuau`

***DATO: "camel case": para nombrar clases, y  "snake case": para nombrar variables y métodos.***

La clase vehiculo va a tener dos parámetros, asignamos a las variables de instancia los valores. Ya con esto podemos crear un objeto a partir de una clase:


```rb
class Vehiculo

  def initialize(modelo, color)
    @modelo = modelo
    @color = color
  end

end
```

`auto = Vehiculo.new("Corvette", "rojo")`

Podemos hacer un método que devuelva la variable de instancia `color`:

```rb
class Vehiculo

  def initialize(modelo, color)
    @modelo = modelo
    @color = color
  end

  def avanzar
    puts "el vehiculo está en movimiento"
  end 

  def color
    return @color
  end

end

auto = Vehiculo.new("Corvette", "rojo")
auto.avanzar
puts auto.color
```

Nos devuelve lo siguiente:

```shell
el vehiculo está en movimiento
rojo
```

Si quisiéramos acceder al modelo, tenemos que crear el método `modelo`, para mostrarlo y acceder.

```rb
def modelo
    return @modelo
end

puts auto.modelo
```

Nos muestra en consola el modelo: `Corvette`

En Ruby no es necesario la palabra reservada `return`, ya que solo podemos llamarla con la variable.

```rb
  def color
    @color
  end

  def modelo
    @modelo
  end
```

De igual manera nos retorna su valor y podemos acceder a el: `rojo` y `Corvette`.


```rb
class Vehiculo

  def initialize(modelo, color)
    @modelo = modelo
    @color = color
  end

  def avanzar
    puts "el vehiculo está en movimiento"
  end 

  def color
    @color
  end

  def color=(color)
    color
  end

  def modelo
    @modelo
  end

  def modelo=(modelo)
    @modelo
  end

end


auto = Vehiculo.new("Corvette", "rojo")
auto.avanzar
puts auto.color = "negro"
```

Nos imprimirá: `negro`

**********************************************************

### Para evitarnos de hacer el camino largo, Ruby nos entrega el método `attr_accessor`.



Con `attr_accessor`, ya no necesitamos los métodos de color y modelo.

```rb
class Vehiculo
  attr_accessor :modelo, :color

  def initialize(modelo, color)
    @modelo = modelo
    @color = color
  end

  def avanzar
    puts "el vehiculo está en movimiento"
  end 

end
```

***NOTA: También existen `attr_reader` y `attr_writer`, pero con `attr_accessor`, cubrimos ambos.***

***************************************************************

### El encapsulamiento

El encapsulamiento es uno de los principios de la POO, quiere decir que el funcionamiento y las características de un objeto están ocultas al exterior.

Cada objeto es como una caja negra, la forma en la que funciona el objeto, permanece oculta. Lo que nos interesa a nosotros es: llamar a los métodos y acceder y modificar atributos. Es por ello que lo llamamos `encapsulamiento`.

Existen Métodos privados y Públicos, atributos privados y públicos.

- Método Privado: No se puede acceder desde fuera del objeto.

- Método Público: Se puede acceder a el desde fuera de objeto.


***En Ruby todo es un objeto***

- Clase string: Una cadena de texto o string.
- Clase array: Un arreglo o array.
- Clase range: Un rango .
- Clase Numeric: Un número o number.


### Algunos ejemplos de Métodos en Ruby:

1- `puts "cadena de carácteres en ruby".upcase`

R: `CADENA DE CARÁCTERES EN RUBY`



2- `puts "cadena de carácteres en ruby".reverse` # cambia el orden de los caracteres

R: `ybur ne seretcárac ed anedac`

3- `puts "19".to_i` #convierte el string en entero: 19

R: `19`

4- `puts -5.abs` # convierte en número absoluto o positivo en este caso.

R: `5`

5- `puts 22.89.round` # redondea la cifra a un entero: 23

R: `23`

6- `puts ["hola", "mundo"].empty?` #nos devuelve: false

R: `false`

7- `puts "cadena de carácteres en ruby".split`

```shell
cadena
de
carácteres
en
ruby
```

### Resumen:

* Las Clases son una especie de plantilla para crear objetos.

* Al proceso de crear objetos le llamamos `instanciación`.

* Los objetos tienen comportamientos y atributos, los comportamientos se llevan a cabo a través de los métodos y los atributos se almacenan en variables de instancia.

**************************************************************

### Herencia

Ruby posee la herencia de comportamientos, la cual va a dejar que sus hijos hereden todos sus métodos.

En este caso vemos que ambos animalitos van a heredar el comportamiento  o atributo de caminar, ya que en Ruby no se permite que se repita el código.


```ruby
class Mamifero

  def initialize
  
  end
  
  def caminar
    puts "camina perrito"
  end
end

class Perrito < Mamifero
  
  def initialize(r)
    @raza = r
  end

  def ladrar
    puts "wuau wuau"
  end
end


class Gatito < Mamifero
  
  def initialize(r)
    @raza = r
  end

  def maullar
    puts "miau miau"
  end
end
```

Lo instanciamos:


```ruby
perrito = Perrito.new("labrador")
perrito.caminar
gatito = Gatito.new("siamés")
gatito.caminar
```

Y nos devuelve: 


```shell
camina cosita chica
camina cosita chica
```


***Método `super`***

Primero ejecuta el método del padre y luego el método personalizado de la clase hijo.

Ejemplo:

```ruby
  def respirar
    super
    puts "respira y jadea"
  end

perrito = Perrito.new("labrador")
perrito.respirar
```

Nos devuelve:

```shell
respira
respira y jadea
```

*****************************************************************

### Todo es un objeto

```ruby
tenemos el número: 32
Este hereda de: Fixnum
Este hereda de: Integer
Este hereda de: Numeric
Este hereda de: Object
Este hereda de: BasicObject
```

```ruby
Tenemos: "hola"
Este hereda de: String
Este hereda de: Object
```

```ruby
Tenemos: ["Alicia", "Pedro"]
Este hereda de: Array
Este hereda de: Object
```

***********************************************************

### Diferencia entre un método de instancia y uno de clase

El método de instancia se define con `def`, `end` y el nombre, mientra que el método de clase se define con `def`, `self`, `end` y el nombre.

```shell
La clase es el molde del objeto que quiero crear.
La instancia es el objeto creado a partir de una clase.
Los métodos de instancia son métodos que pueden ser llamados desde una instancia existente.
Los métodos de clase son métodos que pueden ser llamados sólo desde la clase sin instanciar.
```


Variables de clase: `@@variable_clase`

Un ejemplo de como emplearlas:

```rb
class Persona
  attr_accessor :genero
  @@num_personas = 0
  
  def initialize(genero)
    @genero = genero
    @@num_personas += 1
    puts Persona.num_personas
  end

  def self.num_personas
    @@num_personas
  end
end


class Empleado < Persona
  attr_accessor :identificador, :nivel

  def initialize(genero, identificador, nivel)
    super(genero)
    @identificador = identificador
    @nivel = nivel
  end

  def acerca #método de instancia
    puts "Este empleado es de género #{genero} con identificador #{identificador} y tiene un nivel de #{nivel}"
  end

  def self.calcular_finiquito(salario)
    salario * 2
  end
end

empleado1 = Empleado.new("femenino", "Add76367", 3)
empleado1.acerca
puts Empleado.calcular_finiquito(2000)

empleado2 = Empleado.new("masculino", "NCHCUDH77655", 2)
empleado2.acerca
puts Empleado.calcular_finiquito(1300)
```

Ento nos devolverá el número de personas que se hayan creado, el género, el identificador, el nivel y su finiquito.

```shell
1 # cantidad de personas que se hayan creado
Este empleado es de género femenino con identificador Add76367 y tiene un nivel de 3
4000
2 # cantidad de personas que se hayan creado
Este empleado es de género masculino con identificador NCHCUDH77655 y tiene un nivel de 2
2600
```


Esta variable de clase `@@num_personas = 0`, va a devolvernos la cantidad de personas que esten creadas o instanciadas.

Este método de clase nos ayudará a que la variable de clase funcione y podamos instanciarla o llamarla desde fuera.

```rb
  def self.num_personas
    @@num_personas
  end
```

#### En conclusión:

- Vamos a tener la Herencia (<)
- Clase padre (superclase)
- Clase hije (subclase)
- Sobreescritura de métodos (son versiones diferentes de la clase padre, los podemos adaptar, o incluir nuevos métodos)
- Super: palabra reservada que nos ayuda a invocar al método `padre` si queremos seguir conservando sus características en el método.
- Métodos de clase y Variables de clase, los cuales pueden ser llamados sin necesidad de crear la clase.

*****************************************************************

## Módulos

Los Módulos, son bloques cerrados de códigos que poseen métodos, en los Módulos no creamos Instancias, ni tampoco existe la Herencia.

En los Módulos, no podeos omitir el `self`, ya que no existen las variables de instancia ni los métodos de instancia, como se muestra a continuación:

```rb
module Conversiones
  
  def self.euros_dolares(cantidad)
    cantidad * 2
  end

end

puts Conversiones.euros_dolares(23)
```

Esto nos devolverá `46`.

Incluso podemos tener más de un método del módulo:

```rb
module Conversiones
  
  def self.euros_dolares(cantidad)
    cantidad * 2
  end

  def self.dolares_euros(cantidad)
    "Conversión de #{cantidad} dólares a euros es: #{cantidad * 23}"
  end

end

puts Conversiones.euros_dolares(23)

respuesta = Conversiones.dolares_euros(2)
puts respuesta
```


Esto nos devolverá:


```shell
46
Conversión de 2 dólares a euros es: 46
```

#### Operador de alcance

Llamamos al operador de alcance: `Conversion::COMISION`.

```shell
módulos                clases

- herencia X           - herencia
- instanciación X      - instanciación
- métodos              - métodos
- valores              - valores
```

Los módulos sirven para agrupar constantes, en este ejemplo nos devolverá el valor de PI:

```rb
module ContantesMatematicas
  PI = 3.1416
  E = 2.718
  PITAGORAS = 1.4142
  NUMERO_AUREO = 1.6180339887
end

puts ContantesMatematicas::PI
```

Esto es más conocido como `namespace`, pero en otros lenguajes, en Ruby se le conoce cono Módulos, se accede a ellos mediante el nombre del módulo y seguidp por 4 puntos y el nombre de la constante `ContantesMatematicas::PI`.

Para saber como llamar al módulo, podemos ver el siguiente ejemplo, que nos devolverá: `mira este cubo`.


```rb
module MiModulo
  class Cubo
    
    def initialize
    end

    def rotar
      puts "mira este cubo"
    end
  end

  class Esfera

    def initialize
    end

    def rebotar
    end
  end
end

un_cubo = MiModulo::Cubo.new
un_cubo.rotar
```

Podemos tener más de un módulo y el que se encuentre una misma clase Cubo, pero que para Ruby esta class aunque tenga el mismo nombre que el primer módulo, será completamente diferente por el hecho de estar agrupada en otro Módulo.


```rb
module MiModulo

  class Cubo
    
    def initialize
    end

    def rotar
      puts "mira este cubo"
    end
  end

  class Esfera

    def initialize
    end

    def rebotar
    end
  end
end

module MiModulo2
  
  class Cubo
    
    def initialize
    end

    def rotar
      puts "rotar diferente..."
    end 
  end
end

un_cubo = MiModulo::Cubo.new
un_cubo.rotar

un_cubo2 = MiModulo2::Cubo.new
un_cubo2.rotar
```

Esto nos devolverá lo siguiente:

```shell
mira este cubo
rotar diferente...
```

También podemos agrupar `module` dentro de `module`:

```rb
module MiModulo3

  module Test
  end
    
end
```

***Asi podemos agrupar, métodos, clases, y hasta grupos de módulos.***

**************************************************************

### Módulos como mixins

Mixins: es la capacidad de añadir funcionalidades a nuestras clases, por medio de la iinclusión de módulos. Su nombre hace referencia a `mezclar en`, ya que es una mezcla entre Módulo `module` y Clase `class`.

Aquí el `module`, estará agregandouna funcionalidad, no agrupar `module`.

Por ejemplo, tenemos un juego en el que hereden ciertos poderes como magia o teletransportación, pero si todos heredan de la clase humano, el mago, la druida y el guerrero podrían heredar todos esos poderes y los guerreros no pueden hacer magia, entonces lo solucionamos haciendo lo siguiente:


```rb
class Humano
  
  def caminar
  end

  def hablar
  end
end

module Magia
  
  def teletransportacion
    puts "teletransportación activada!"
  end
end

class Mago < Humano
  
  include Magia
end

class Druida < Humano
  
  include Magia
end

class Guerrero < Humano
  
end

merlin = Mago.new
merlin.teletransportacion
```

Esto nos devolverá: `teletransportación activada!`


***También podemos tener varios módulos en distintos archivos y llamarlos con `require "./nombre_del_archivo"`. Y ocupar todas las bondades que nos entregan los otros `module`.***

Simularemos que `circulos`, es un archivo externo pero dentro de la misma carpeta, al igual que `cuadrados`.


```rb
require "./circulos"
require "./cuadrados"

Circulos.saludar
Cuadrados.saludar
```

**********************************************************

### Yield

Nos indica dónde se va a ejecutar el bloque de código que le pasé al llamar al método, como se muestra en el ejemplo:

```rb
def saludar
  puts "hola!"
  yield
  puts "fin del método"
end

saludar {puts "dentro del bloque"}
```


Nos devolverá los tres llamados:


```shell
hola!
dentro del bloque
fin del método
```

***Yield, lo que hace es; esperar a que le pases el código a ejecutar por intermedio de ls llaves, las cuales van a almacenar mi código a ejecutar, incluso se puede utilizar `yield` más de una vez. Y la podemos llamar en dónde necesitemos realizarlo***


Incluso podemos pasarle un parámetro al método:


```rb
def saludar(nombre)
  puts "hola #{nombre}!"
  yield
  puts "fin del método"
  yield
end

saludar('Juanita') {puts "dentro del bloque"}
```

Esto nos devuelve:

```shell
hola Juanita!
dentro del bloque
fin del método
dentro del bloque
```


Pero si tenemos varias líneas de código podemos hacerlo con `do` y `end`.


```rb
def saludar(nombre)
  puts "hola #{nombre}!"
  yield
  puts "fin del método"
  yield
end

saludar('Juanita') do 
  puts "dentro del bloque con yield"
  puts "otra linea de bloque con yield"
end
```


Esto nos devolverá:


```shell
hola Juanita!
dentro del bloque con yield
otra linea de bloque con yield
fin del método
dentro del bloque con yield
otra linea de bloque con yield
```

A `yield`, también podemos pasarle parámetros de la siguiente manera, para ordenar un poco el código:


```rb
def saludar(nombre)
  yield('Pedro')
  puts "hola #{nombre}!"
end

saludar('Juanita') do |x|
  puts "dentro del bloque con yield #{x}"
end
```

Esto se vería así:

```shell
dentro del bloque con yield Pedro
hola Juanita!
```

### Tipos de bloques

```rb
3.times do
  puts "pueba"
end
```

R:

```shell
pueba
pueba
pueba
```


```rb
['hola', 2, 'tres'].each do |x|
  puts x
end
```

R:
```shell
hola
2
tres
```



```rb
grupo = [34,12,2,6,78,22,24,9]
grupo.select! do |edad|
  edad >= 18
end

puts grupo
```

R:
```shell
34
78
22
24
```

### Procs

Nos ayuda a no repetir el código, podemos crear nuestro objeto `procs`, y reutilizarlo.


```rb
mayor_edad = Proc.new do |edad|
  edad >= 18
end

grupo = [34,12,2,6,78,22,24,9]
grupo.select!(&mayor_edad)
puts grupo
```


Esto de todas manera nos devuelve los mayores de edad:

```shell
34
78
22
24
```

También podemos utilizarlo con los menores de edad y crear un `proc` para ese bloque:

```rb
mayor_edad = Proc.new do |edad|
  edad >= 18
end

menor_edad = Proc.new do |edad|
  edad < 18
end

grupo = [34,12,2,6,78,22,24,9]
grupo.select!(&mayor_edad)
puts grupo

grupo2 = [34,12,2,6,78,22,24,9]
grupo.select!(&menor_edad)
puts grupo2
```

### Lambda

```rb
un_proc = Proc.new do |x|
  puts x
end

un_proc.call(45)
```

R: `45`

Los lambdas los llamamos con:

```rb
un_lambda = lambda do |x, y|
  puts x,y
end

un_lambda.call(23,25)
```

R: `23` y `25`


Este código nos devuelve el `return` que nos da el método, pero si esto lo realizaramos con el `Proc.new`, nos retornaría el texto dentro del bloque:


```rb
def mi_lambda

  test = lambda { return "return dentro del bloque"}
  test.call
  return "este es el return del método"
end

puts mi_lambda
```


### Crear, leer y escribir archivos:

Ruby nos da una de las ventajas que es crear, leer y reecsribir archivos existentes, con `File.new("nombre.txt", "w")` la `w` significa escribir, lo creamos, con `File.open("nombre.txt", "a")`, la `a` significa append de adjuntar con esto lo abrimos y como leerlos: `File.open("nombre.txt", "r")`.


***Crear***

```rb
archivo = File.new("creando_archivo.txt", "w")
archivo.puts('hola')
archivo.close
```

***Agregar datos***

```rb
archivo = File.open("creando_archivo.txt", "a")
archivo.puts('otra linea')
archivo.close
```


***Con estas líneas de código le estamos diciendo que agregue tantas líenas como veces ejecutemos el código***


```rb
File.open('creando_archivo.txt', "a") do |file|
  file.puts('otra linea')
end
```


***Leer el archivo***

El método `while` nos permite leer el archivo línea por línea, aunque también la podemos hacer con `readlines`.


```rb
File.open("creando_archivo.txt", "r") do |file|
  while linea = file.gets
    puts linea
  end
end
```

Este código hace exactamente lo mismo:

```rb
File.open("creando_archivo.txt", "r") do |file|
  file.each_line do |linea|
    puts linea
  end
end
```


Podemos almacenar los datos dentro del archivo `txt` los podemos almacenar en variables:


```rb
texto = File.read("creando_archivo.txt")
puts texto
```

***NOTA: El método `read`, nos permite abrir y cerrar el archivo.***


```rb
arreglo = File.readlines("creando_archivo.txt")
puts arreglo.class
```


***Este método nos permite saber si existe un archivo antes de llamarlo y trabajar con el.***


Nos devuelve `true` si el archivo existe: `puts File.exist?("creando_archivo.txt")`.


***Este método sería más útil si lo utilizamos con un condicional `if`***


```rb
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
```

### Renombrar y eliminar un archivo:


Para renombrar el archivo, lo podemos hacer con  `File.rename`, esto va a recibir dos parámetros, el archivo al cual necesitaos renombrar y el nuevo nombre que va a recibir ese archivo.

```rb
archivo = File.new("creando_archivo.txt", "w")
archivo.close
File.rename("creando_archivo.txt", "creando_archivo2_renombrado.txt")
```

¿Qué pasa si ahora queremos eliminar este archivo?


```rb
File.delete("creando_archivo2_renombrado.txt")
```

Esto hará que el archivo que creamos y que luego renombramos, se elimine junto con su contenido.

***************************************************************

### Crear, renombrar y eliminar una carpetas con Ruby:

Para crear carpetas con Ruby, debemos llamar al método `Dir`, esto nos creará una carpeta dentro de nuestra carpeta raíz en la cual estamos trabajando: `Dir.mkdir("carpeta-creada-con-ruby")`.


Para renombrar carpetas creadas con Ruby, podemos utilizar lo siguiente:  `File.rename("carpeta-creada-con-ruby", "renombrar-carpeta-creada-con-ruby")`.


Para eliminar la carpeta, simplemente utilizamos el siguiente comando: `File.delete("renombrar-carpeta-creada-con-ruby")`.

***************************************************************

### Iterar y recorrer archivos:

Para recorrer e iterar todos los archivos que pueda contener nuestra carpeta raíz, esto nos enlistará todos los archivos dentro de la carpeta la cual le estoy dando la ruta dentro del paréntesis como parámetro, lo podemos hacer de la siguiente manera:


```rb
Dir.foreach('./') do |item|
  puts item
end
```


******************************************************************

### Ternario

Podemos tener el código en cinco lineas o podemos utilizar el ternario y hacerla en una sola linea, entendible y fácil de comprender.


```rb
puts "Ingresa un número"

numero = ARGV[0].to_i

if numero % 2 == 0 
  puts "El número es par"
else
  puts "El número es impar"
end
```


Con ternario, nos quedaria asi:

`puts numero % 2 == 0? "El número es par" : "El número es impar"`.


**************************************************

#### Matrices

 Una matriz es un arreglo de dos dimensiones

 Tienes que tener la misma cantidad de datos

Todos los elementos deben ser numeros


Propiedades de las Matrices:

- Para obtener l diagonal de la matriz utilizaremos `:diagonal`.

- Para obtener los valores que se encuentran encima de la diagonal utilizaremos `:strict_upper`.

- Para obtener los valores que se encuentran por debajo de la diagonal utilizaremos `strict_lower`.

- Para saber si una matriz es diagonal utilizaremos `diagonal?`.


Ejemplo de una matriz, utilizaremos `require matrix`, para el llamado de la matriz en el archivo.rb:

```rb
require 'matrix'

matriz = Matrix[[1, 2, 3], [4, 5, 6], [7, 8, 9]]

```

Esta es la diagonal física la cual estaríamos trabajando:

```shell
1 2 3
4 5 6
7 8 9
```


Para saber cuál es la diagonal?


```rb
matriz.each(:diagonal) do |i|
  puts i
end
```

Esto nos devolverá: `1 5 9`


Ahora para sacar los valores que están ór encima de la diagonal:


```rb
matriz.each(:strict_upper) do |i|
  puts i 
end
```

Esto nos devolverá: `2 3 6`


Valor por debajo de la diagonal:

```rb
matriz.each(:strict_lower) do |i|
  puts i 
end
```

Lo cual debiera darnos: `4 7 8`

Para saber si una matriz es una diagonal, en matemáticas las matrices son solo la diagonal y el resto se compone de ceros, por tanto si evaluamos esta matriz, nos debiera dar `false`. 

```rb
puts matriz.diagonal?

=> false
```

***Para que sea una matriz debería ir de la siguiente manera:***

```rb
matriz2 = Matrix[[1, 0, 0],[0, 2, 0],[0, 0, 3]]
puts matriz2.diagonal?
```

Esto nos devolverá un `true`.

Y de manera gráfica se verá:

```shell
1 0 0
0 2 0
0 0 3
```
 Ya que solo l diagonal posee números, y el resto es cero `0`.

***************************************************************

### Operadores de hashes

+ hashes.length
+ hashes.size
+ hashes.delete(clave)
+ hashes.empty?
+ hashes.invert
+ hashes.has_key?
+ hashes.keys
+ hashes.values
+ hashes.key('valor')
+ hashes.clear
+ hashes.merge(hashes2)


******************************************************************

### El initialize

Este tiene la característca que es un constructor, al menos en la programación orientada a objetos.

- Se ejecuta cuando creamos un objeto de una clase.
- Se utiliza para inicializar valores que el objeto tendrá.


***Propiedades del un objeto:***

> Son valores asociados con un objeto.

> Un objeto es una colección de propiedades y métodos.

> Las propiedades también se conocen como variables de instancias e inician con un `@`.

> Las variables de instancia son identificadores del Objeto y no de la Clase.

> Se pueden acceder a ellas desde cualquier parte del objeto.

******************************************************************************

### ***Mátodos accesores:***

> Nos ayudarán a leer y alterar propiedades de un objeto.
> Hay 2 tipos: Getters y Setters:
  - Getters sirve para leer propiedades.
    - Setters sirve para asignar o modificar una propiedad.

> Para los setters se puede utilizar la siguiente nomenclatura: 

```ruby
  def nombre=(nombre)
    @nombre = nombre
  end
```

No necesitamos definir getters y setters de manera explícita:

```ruby
class Profesor
  def initialize(nombre)
    @nombre = nombre
  end

  def nombre
    @nombre
  end

  def nombre=(nombre)
    @nombre = nombre
  end
end
```

Pero existe un manera más corta para realizar lo mismo:

> attr_accessor: funciona como getters y setters.

> attr_writer: funciona como setter.

> attr_reader: funciona como getter.

*****************************************************************************

### Encapsulamiento

> Public:
  - Los métodos públicos son todos los métodos accesibles para cualquier instancia externa de la clase.

> Private:
  - Cuando queremos métodos que solo se puedan ejecutar desde dentro de la clase.

> Protected:
  - Desde fuera se comportan como métodos privados y desde dentro como métodos públicos.

******************************************************************

### Herencia

> Proceso de crear clases a partir de otras clases.

> Existen dos tipos de clases:
  - Clases padres
    - Clases hijes
    - Las propiedades y métodos de la clase padre son heredadas a la clase hije.
    - Evitas copiar código (DRY).


************************************************************************************

### Consumir una API con Ruby

> Lo primero es crear una cuenta en Postman
  - Hacer una petición del tipo GET, con `https://jsonplaceholder.typicode.com/posts`
  - Esto nos devolverá una respuesta de tipo JSON, con la vamos a trabajar.
  - Copiar el código que nos entrega, seleccionar el lenguaje a utilizar `Ruby`
  - Nos entregará algo como esto:

```ruby
  require "uri"
require "json"
require "net/http"

url = URI("https://jsonplaceholder.typicode.com/posts")

https = Net::HTTP.new(url.host, url.port)
https.use_ssl = true

request = Net::HTTP::Get.new(url)
request["Authorization"] = "Basic bmFtZTpwYXNzd29yZA=="
request["Content-Type"] = "application/json"
request.body = JSON.dump({
  "content": "prueba desde postman!",
  "user_id": 1
})

response = https.request(request)
puts response.read_body
```

> Ahora en la consola interactiva de Ruby agregamos lo siguiente:

```ruby
$ irb
 copiar y pegar el code
```

Luego: 

> `require 'json'` Lo devuelve en formato json, en un arreglo y dentro hay varios hashes.


> `JSON.parse response.read_body`


> `body = JSON.parse response.read_body`

> `body.class` # array

> `body[0]` => un arreglo y hash


```shell
=> {"userId"=>1, "id"=>1, "title"=>"sunt aut facere repellat provident occaecati excepturi optio reprehenderit", "body"=>"quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto"} 
>  body[0] ["userId"]
```


### Iterar JSON.parse con su body

Esto nos entregrá todos los títulos de los posts:


```ruby
body.each do |post|
  puts post['title']
end

```


Refactorizar el código:

```ruby
require "uri"
require "json" #cuando llamamos a JSON.parse ayuda a filtrar la respuesta con ese formato de texto plano.
require "net/http"

def request(address)
  url = URI(address)
  https = Net::HTTP.new(url.host, url.port)
  https.use_ssl = true
  request = Net::HTTP::Get.new(url)
  request["Authorization"] = "Basic bmFtZTpwYXNzd29yZA=="
  request["Content-Type"] = "application/json"
  request.body = JSON.dump({
    "content": "prueba desde postman!",
    "user_id": 1
  })
  
  response = https.request(request)
  JSON.parse response.read_body   # puts response.read_body

end

body = request("https://jsonplaceholder.typicode.com/posts")

body.each do |post| # iterar el arreglo:

  puts post['title']
end

```

*********************************************************************

### Sobreescribir métodos

> Para sobreescribir un método se tiene que definir en la clase hija.
  - Esto se suele hacer con el fin de cambiar el comportamiento de la clase padre.

Ejemplos de sobreescribie los métodos:

```ruby
class Terricola
  attr_accessor :nombre

  def initialize(nombre)
    @nombre = nombre
  end

  def saludar
    puts "Hola soy #{nombre} y soy un #{self.class} o al menos lo parezco"
  end
end

class Ingeniero < Terricola
end

class Animal < Terricola
  def saludar
    puts "soy un #{self.class} y por eso no hablo :("
  end
end

class Leon < Animal
  def saludar
    puts "rawww!!" # se sobreescribe el método
  end
end

class Mono < Animal
  def saludar
    puts "Uauauauaua!!"
  end
end

leon = Leon.new('Leon') # si comentaramos los métodos saludas de laas demás clases, buscaría el metodo en la clase padre y lo ejecutaría
leon.saludar

ave = Animal.new('Gansa')
ave.saludar

mono = Mono.new('Mono')
mono.saludar

jorge = Terricola.new("Jorge")
#jorge.nombre = "Jorge"
#puts jorge.nombre
jorge.saludar
#puts jorge.class # Terricola


pepe = Ingeniero.new("Pepe")
puts pepe.nombre
pepe.saludar
```

************************************************************************

### Métodos de Clases:

> Se mandan a llamar sobre la clase y no sobre un objeto o una instancia de clase.

> La particularidad que los distingue es que inician con `self`, self sería elobjeto de la clase.

> Se deben utilizar cuando la funcionalidad no le pertenece a ninguna instancia u objeto.

```ruby
class Auto
  @marca = "Chevrolet"

  def andar
    puts "Andando..."
  end

  class << self
    def marca
      @marca
    end

    def marca=(marca)
      @marca = marca
    end
  end
end

Auto.marca = "Nissan"
puts Auto.marca

bmw = Auto.new
bmw.andar
```

*************************************************************

### Variables de Clase:

> Se puede utilizar desde métodos de la clase o métodos del objeto.

> Se identifican con `@@` al inicio de la clase.

> Las clases hijas solo heredan las varibales de clase.

> Se utilizan cuando quieres almacenar una variable que le pertenece a la clase y no al objeto.

```ruby
class Video
  @@type = "video/mp4"

  
  def type_objeto
    puts @@type
  end
  
  class << self
    def type_clase # def self.type_clase
      puts @@type # imprimimos la varible de clase en el método de clase
    end
  end
end

Video.type_clase
nuevo_video = Video.new
nuevo_video.type_objeto # video/mp4
```

### Variables de clase con herencia

***En este caso la clase hije no imprimirá nada a no ser que se le entregue una variable de clase***

```ruby
class Padre
  @@de_clase = "test de la clase"
  @de_objeto = "test del objeto"

  def self.test
    puts @@de_clase
    puts @de_objeto
  end
end

class Hije < Padre
  def self.test
    super
  end
end

Padre.test # es un método de clase asi que no necesita inicializarlo con new
```

************************************************************

### Polomorfismo

> Es la capacidad que tienen los objetos de reaccionar al mismo método de diferentes maneras.

```ruby
# ejecutar la clase Persona
pedro = Persona.new('Victor', 'Garrido', 22)
pedro.presentacion # Hola a todos, yo soy Victor Garrido

# ejecutar la clase Estudiante
pedro = Estudiante.new('Victor', 'Garrido', 22)
pedro.presentacion # Hola Profesor, soy el estudiante: Victor Garrido

# ejecutar la clase Profesor
pedro = Profesor.new('Victor', 'Garrido', 22)
pedro.presentacion # Hola Alumnos, soy el profesor: Victor Garrido

# ejecutar la clase Padres
pedro = Padres.new('Victor', 'Garrido', 22)
pedro.presentacion # Hola somos la familia Garrido
```

**************************************************************

## Bloques

Es un conjunto de sentencias agrupadas.

Se distinguen porque las sentencias se pueden agrupar usando `do` y `end` o `{}`.

Puede recibir uno o varios argumentos.

Rotan valores.


```ruby
# bloques de código
[1,2,3,4,5,6,7,8,9].each do |number|
  #puts number
end

# bloques de código inline
#(1..10).each {|number| puts number}

# bloque número y posición
[1,2,3,4].each_with_index do |number, pos|
  #puts "número: #{number} => posición: #{pos}"
end

# ejecutar un bloque con números impares
impares = [1,2,3,4,5,6,7].select do |number|
  number % 2 != 0
end
#puts impares

# el bloque anterior se podría hacer de manera inline
impares = [1,2,3,4,5,6,7].select {|number| number%2 != 0}
puts impares
```


### Bloques y Métodos:

Una vez definido nuestro bloque lo podemos llamar dentro de nuestros métodos.

Para esto podemos utilizar la palabra reservada `yield`.

- También podemos definir al inicio del método el bloque usando el símbolo `&`.
  - NOTA: La definición del bloque será el último parámetro a pasar.

```ruby
# pasarle un bloque de código:
def hola
  yield
end

hola {puts "holaaa!"}
```


Otra manera de pasarle un bloque a ejecutar:

```ruby
def hola
  yield
end


hola do
  suma = 1 + 5 
  puts suma
end
```

Cuando no le pasamos un bloque a ejecutar, para que no nos genere un error:

```ruby
def adios
  yield if block_given? 
end
```


- Bloque : `bloque.call`, nos permite llamar al bloque que va a ejecutar.

```ruby
def saludo nombre, &bloque
  bloque.call
  puts nombre
end

saludo("Ana") {puts "buenos dias"}
```


> Almacenar el valor de bloque en una variable:

- El bloque se lo vamos a pasar al final en nuestro método, sino nos generará un error.

```ruby
def saludo nombre, &bloque
  hello = bloque.call
  puts hello + " #{nombre}"
end

saludo("Ana") {"buenos dias"}
```

### Alcance de variables en bloques

- Las variables declaradas se pueden utilizar en el bloque.
  - Podemos pasar argumentos al bloque.
  - Podemos crear variables que solo se utilicen dentro del bloque.

```ruby
def saludo
  yield
end

nombre = "Ana"
saludo {puts "hola #{nombre}"}

saludo do
  puts nombre
end
```

Podemos cambiar el valor de la variable `nombre`:

```ruby
def saludo
  yield
end

nombre = "Ana"
saludo {puts "hola #{nombre}"}

saludo do
  #puts nombre
  nombre = "Juan"
  puts "hola #{nombre}"
end
```


En este caso `nombre2`, no está definido:

```ruby
def despedida
  yield
end

despedida do |nombre2|
  puts "hasta luego #{nombre2}"
end
```

Y el bloque está esperando que le pasemos un valor(se lo podemos pasar a `yield`):

```ruby
def despedida
  yield('Patricia')
end

despedida do |nombre2|
  puts "hasta luego #{nombre2}"
end
```


Y asi podemos agregar más funcionalidades  a nuestro `yield`:

```ruby
def despedida
  yield('Patricia')
end

despedida do |nombre2; apellido|
  desp = "hasta luego #{nombre2}"
  apellido = "Solis"
  puts desp +" #{apellido}"
end
```

*****************************************************************

# Operador Ternario

Es una forma de reducir el tamaño de una concdición y al mismo tiempo volver la condición mucho más entendible para las personas.

> cv ? res_v : res_f
  + cv: Condición verdadera
  * res_v: Resultadi verdadero
  + res_f: Resultado falso

**********************************

### Un número es divisible por un número cuando:

| Un número es divisible entre| Condición |                     Ejemplo              |
|-----------------------------|-----------|------------------------------------------|
|         2                   | El último dígito es par (0, 2, 4, 6, 8).| "426" sí "273" no |
|        3                    | La suma de sus dígitos es divisible entre 3. | 642 sí (6 + 4 + 2 = 12, 12 es divisible entre 3) 721 no (7 + 2 + 1 = 10, 10 no es divisible entre 3) |
|       4         |Los últimos dos dígitos forman un número divisible entre 4.| 164 sí (64 es divisible entre 4) 135 no (35 no es divisible entre 4) |
|         5  |  El último dígito es 0 o 5  |       685 sí 432 no |
| 6                    | El número es divisible entre 2 y entre 3.| 324 sí (es par y 3 + 2 + 4 = 9) 411 no (aunque es divisible entre 3, no es par)|
| 9 | La suma de sus dígitos es divisible entre 9. | 279 sí (2 + 7 + 9 = 18) 512 no (5 + 1 + 2 =8)|
| 10 | El último dígito es 0. | 620 sí 238 no |


