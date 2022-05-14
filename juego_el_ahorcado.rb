=begin
Objetivo: Realizar un juego de ahorcado.

Detalles: El programa debe elegir una palabra al azar de una lista de palabras, a continuación se le mostrara al jugador los espacios de cada letra por medio de asteriscos, por ejemplo si la palabra secreta es “elefante” la primera pantalla consistirá de:

********  
Elige una letra para completar la palabra. Te quedan 5 oportunidades.
El jugador elige una letra, si la letra se encuentra en la palabra se debe completar en los espacios correspondientes, por ejemplo el jugador elige la letra “e”:

e*e****e
Elige una letra para completar la palabra. Te quedan 5 oportunidades.
Se le debe pedir nuevamente al usuario que elija una letra. Si la letra no se encuentra:

e*e****e  
Elige una letra para completar la palabra. Te quedan 4 oportunidades.
Como se puede ver en los ejemplos el usuario dispone de 5 oportunidades al comenzar el juego. Si al jugador se le acaban las oportunidades antes de encontrar la palabra ha perdido y el juego debe terminar. Por otro lado si el jugador encuentra todas las letras ha ganado y se le debe mostrar un mensaje de felicitación.

Notas:

Las palabras deben ser extraídas al aleatoriamente de un archivo de texto previamente creado, en cada línea debe aparecer una palabra (ej. avestruz, elefante, hormiga, serpiente, perro). No es necesario crear el archivo por medio de Ruby, crearlo manualmente por medio del bloc de notas con la extensión “txt”. Esto nos permitirá ampliar el número de palabras en el juego fácilmente.
Para trabajar carácter por carácter en una cadena de caracteres podemos tratar a la cadena como si fuera un arreglo. Por ejemplo supongamos que existe una variable llamada animal que contiene el valor “avestruz”. Si tecleamos puts animal[2] nos va a mostrar el caracter “e”.
Consejos:

Para una primera versión del juego no es absolutamente necesario llevar registro de que letras ha elegido el usuario en el pasado.
Recuerda que para saber el número de caracteres en una cadena utilizamos el método length (ej. animal.length).
El método para obtener un número aleatorio es rand, por ejemplo para obtener un número aleatorio del 1 al 10 introducimos rand(10) + 1. Si no has utilizando antes el método rand experimenta con él en IRB.
No trates de escribir todo el programa de una sola vez, los mejores programadores parten los problemas en partes pequeñas y resuelven cada problema pequeño uno por uno.
No desesperes, a la mayoría de programadores principiantes les lleva varias horas realizar un programa de este tipo.
Existen muchas formas de escribir el mismo programa, en una primera versión no te preocupes si has realizado un programa muy eficiente o con código elegante, para la primera versión basta con que funcione. Después tendrás la oportunidad de perfeccionarlo y añadir detalles.
No te olvides de cortar los saltos de línea de las cadenas con chomp.
=end