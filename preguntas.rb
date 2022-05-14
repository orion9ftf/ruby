
1.- Clase: es una fábrica o molde para crear objetos o instancias de la misma clase.

2.- Objeto: es la instancia creada a partir de una clase padre.

3.- Métodos de clase: estos van a hacer referencia a la clase, y se puede crear así: self.metodo_de_la_clase.

4.- Métodos de instancia: van a ser los metodos que sean del objeto, contenida dentro de la clase padre.

5.- Variables de instancia: estas van a ser las variables con @algo y son utilizadas por el objeto creado o instanciado.

6.- Variables de clase: estas van a ser con doble @@ y van a ser utilizadas por la clase padre.

7.- Getters y Setters: nos sirven para mostrar un atributo o crearlo.

8.- Self: va a hacer referencia a la clase o a la instancia, por ejemplo: self.metodo_de_clase o self.metodo_de_instancia.

9.- TDA (tipos de datos abstractos):

10.- UML: sirve para diagramar las clases (atributos y métodos).

11.- Identidad:

12.- Mutabilidad:


******************************************************************************

Entrevista Técnica Desafío Latam:
***********************************************************************************************************************************
1.- ¿Diferencia entre require y require_relative?

require: se usa para llamar las dependencias externas(ej: llamar librerias).

require_relative: se usa cuando el archivo que necesita cargar existe en algún lado(ej: tengo un archivo .rb y uno .sql y necesito utilizarlo, entonces le doy la ruta para que mi archivo ruby lo pueda utilizar).
**********************************************************************************************************************************
2.- ¿Cuál es la diferencia entre usar and y && ? ¿Cuál se recomienda?

- Al utilizar and este va a tener menor precedencia al momento de evaluar una condición.
- Se recomienda doble ampersand && para evaluar condiciones.
***********************************************************************************************************************************
3.- ¿Para qué sirven los lambda? De un ejemplo

- Un lambda es otra forma de guardar un bloque dentro de una variable o pasar un bloque por parámetro al igual que un proc. Pero se diferencian en la cantidad de parámetros que le puedes pasar, los lambda son más estrictos en ese aspecto ya que le debes pasar la misma cantidad de parámetros con el cual fue construido. Nos genera un error.
***********************************************************************************************************************************
4.- ¿Qué es Rack?

En Ruby es un paquete que proporciona una interfaz para que un servidor web se comunique con la aplicación.

- Ejemplo de middleware: servidores web, sistemas de autenticación, herramientas de mensajería.

- Existe uno llamado: rack-honeypot es un tipo de middleware, que funciona para detectar y atrapar spam y bots maliciosos que interactúan con su aplicación.
***********************************************************************************************************************************
5.- ¿Cuál es el rol puma, webrick o de passenger? ¿Cuál es su relación con rails?

- También existe Unicorn.
 
- Passenger: es un servidor web de app, diseñado para ser rápido y robusto y altamente escalable, soporta: Ruby, Python, Node.js.

- Webrick: es un conjunto de herramientas de servidor HTTP que puede ser configurado como un servidor HTTPS.


- Puma: es un poco más simple y rápido que los anteriores servidores, se utiliza tanto para entornos de desarrollo y producción.

***********************************************************************************************************************************
6.- ¿Qué funcionalidad tiene action cable? ¿Qué problema resuelve?

- Dado que los controladores Rails están diseñados específicamente para manejar solicitudes HTTP, Rails ha ideado una forma diferente de manejar su integración de WebSockets. Las aplicaciones de Rails 5 tienen un nuevo directorio en el directorio de aplicaciones llamado canales. Los canales actúan como controladores para las solicitudes de WebSocket encapsulando la lógica sobre trabajos particulares de la unidad, como mensajes de chat o notificaciones. 
- Action Cable requiere de PostgreSQL como adaptador.

***********************************************************************************************************************************
7.- ¿Para qué sirve Turbolinks?

- Es una gema incluida en RoR, que evita tener que recargar los archivos css y javascript cada vez que oprimes un link en tu aplicación, haciendo que las app se sientas más rápidas y ágiles en el navegador.

***********************************************************************************************************************************
8.- ¿Qué devuelve params?

- devuelven una clave-valor, donde la clave y el valor son cadenas, pero RoR tiena una sintáxis especial para hacer que los parámetros sean un hash.
- para que haya un params debe haber un tipo de peticion al navegador de tipo GET.
***********************************************************************************************************************************
9.- ¿Cuál es la función de sprockets?

- los sprockets son una libreria o gema de Rails para compilar, permite organizar los archivos Javascript de una aplicación.
***********************************************************************************************************************************
10.- ¿Cuál es la diferencia entre agregar nuestros archivos al asset path y agregarlos a la carpeta public?

- en los asset_path podemos guardar los archivos con rutas especificas, mientras que con la carpeta public funciona como un servidor de archivos para contenido estático.
***********************************************************************************************************************************
11.- ¿Cuál es la diferencia entre rutas member y collection? 

- Por ejemplo puedo tener una API la cual necesito buscar ciertos datos, como puede ser buscarlo por id en ese caso ocuparía las rutas member ya que me permite buscar de manera especifica de un dato a la vez, y me entregará el id que estoy buscando, a diferencia de las rutas collection, que nos entregará una colección de datos dentro de mi API.

***********************************************************************************************************************************
12.- ¿Qué son las shallow routes?

- Son para anidar recursos en nuestras rutas
Ej: 

resources :articulo, shallow: true do
	resources: :comentarios
end

***********************************************************************************************************************************
13.- ¿Para qué sirve el patrón decorador? ¿Qué capas del MVC están involucradas?

- sirve para agregar dinámicamente un nuevo comportamiento a un objeto existente.
- involucra todo el mvc.

***********************************************************************************************************************************
14.- ¿Para qué sirve el patrón presentador?

- sirve para las funcionalidades de visualización 

***********************************************************************************************************************************
15.- ¿En qué consiste el problema de n+1 query?

- genera dos consultas a la base de datos, se podria solucionar con includes a la misma consulta dependiendo de que tan especifica sea la calidad de la misma.

***********************************************************************************************************************************
16.- ¿Cuál es la diferencia entre un join y un includes?

- join: nos permite asociar dos o más tablas en base a una columna que tengan en común.
- includes: es mas especifica en la consulta.

***********************************************************************************************************************************
17.- ¿Qué ventajas tiene el patrón de lazy loading sobre el active record? ¿Qué prueba simple podriamos hacer para confirmar esto?

- lazy loading(o carga diferida) de las consultas en la base de datos, no tiene ninguna ventaja al contrario retrasa las consultas y las hace menos eficientes.

- ejemplo: podemos tener una tabla usuarios que este asociada a una tabla amigos y preguntar primero por todos los amigos del usuario y luego preguntar por cada uno de ellos por cada usuario.

***********************************************************************************************************************************
18.- ¿Cuál es la diferencia entre un full outer join y un left join?

- full outer join(o full join): dentro de una consulta se encarga de mostrar todas las filas de ambas tablas sin importar si existe coincidencias.

- left join: dentro de una consulta a la base de datos le damos prioridad a la tabla de la izquierda y buscamos en la tabla derecha. si no existe ninguna coincidencia de igual forma te muestra todos los resultados de la primera tabla.

***********************************************************************************************************************************
19.- ¿En qué consiste el teorema de CAP?

- Nos ayuda a escoger con qué base de datos queremos trabajar.

- Coherencia: significa que todos los clientes ven los mismos datos al mismo tiempo.

- Disponbilidad: cualquier cliente que realiza una solicitud de datos obtiene una respuesta.

- Tolerancia a las particiones: pese a las interrupciones de comunicación, esta sigue funcionando.

***********************************************************************************************************************************
20.- ¿Qué tipo de problemas no resolverías ocupando bases de datos NOSQL?

- A medida que nuestra aplicación crece la base de datos se vuelve insostenible en cuanto al orden que debe llevar con los registros.
***********************************************************************************************************************************
21.- Bases de datos: ¿Qué ventajas y desventajas tiene agregar un índice?

VENTAJA:
- Nos permite una mayor rapidez en las ejecución de las consultas.
*******************
DESVENTAJAS:
- Los índices tambien suponen una desventaja en tablas demasiado pequeñas puesto que no necesitaremos ganar tiempo en las consultas.

- Tampoco son muy aconsejables cuando pretendemos que la tabla sobre la que se aplica devuelva una gran cantidad de datos en cada consulta.

- Por último hay que tener en cuenta que ocupan espacio y en determinadas ocasiones incluso más espacio que los propios datos.

***********************************************************************************************************************************
22.- Control de versiones: ¿Manejas control de versiones? ¿Por terminal o sorftware?

- Git, RVM, 
- Por terminal sin interfáz gráfica, por linea de comandos.

***********************************************************************************************************************************
23.- Testing: ¿Implementan testing dónde trabajas?

- Si, con minitest.
***********************************************************************************************************************************
24.- React: ¿Qué tipo de arquitectura estás ocupando?

- existen distintos tipos de arquitecturas:
	- hexagonal
	- react
	- front end
	- flux
	- redux
	- nodejs
***********************************************************************************************************************************
25.- Gemas favoritas? 

- ActiveAdmin
- Devise
- geocoder
***********************************************************************************************************************************
26.- ¿Autenticación Manual?

- A eso te refieres con: 
	- registro de usuarios
	- manejo de contraseñas
	- confirmacion de usuarios via email
	- validacion de usuarios
	- creación de token.

***********************************************************************************************************************************
27.- ¿Geolocalización?

- si he utilizado con librerias como geocoder aplicadas con javascript y jquery, incluso el reconocimiento facial utilizando la activación de la cámara del usuario. (previa autorización).

***********************************************************************************************************************************
28.- ¿Qué es yield?

- Ejecuta el bloque que se le pasa a una función.
- Va a ejecutar la misma función pero podemos cambiar su comportamiento según el bloque que le pasemos. Es como los pipe operator |k,v|.

***********************************************************************************************************************************
29.- ¿Cuál es la diferencia entre resource y resources?

- resources: sirve pra crear rutas para más de un recurso, mientras que con resource, podemos especificar que recursos necesitamos y no agrupa todos los métodos.

***********************************************************************************************************************************
30.- ¿Cómo se hace una ruta anidada?

- esas son como las shallow routes...

   namespace :admin do
	resources :articulos, :comentarios
   end

***********************************************************************************************************************************
31.- ¿Cuál es la utilidad de los namespaces?

- podemos organizar grupos de controladores en un espacio de nombres, por ejemplo el controlador de Admin va a agrupar otros recursos que pueden ser usuarios, amigos, comentarios.
***********************************************************************************************************************************
32.- ¿Qué hace el método .zip?

- convierte cualquier argumento en matrices.

***********************************************************************************************************************************
33.- ¿Para qué sirve el operador splat?

- para pasar más de un argumento al parámetro.

***********************************************************************************************************************************
34.- ¿Cuál es la diferencia entre .each y .map?

- .map: crea una nueva matriz o arreglo que contiene los valores devueltos en el bloque.

- .each: llama al bloque una vez para cada elemento en si mismo, pasando ese elemento como parámetro. Devuelve la propia matriz.
***********************************************************************************************************************************
35.- ¿Cuál es el scope de una variable local?

- el guión bajo _

***********************************************************************************************************************************
36.- ¿Cuál es la diferencia entre una clase y un objeto?

- La clase es una plantilla para crear objetos mientras que los objetos son una instancia de una clase.
***********************************************************************************************************************************
37.- ¿Cuál es la diferencia entre extend e include?

- include: mezclas en métodos de módulo especificados como métodos de instancia en la clase de destino, mientras que en extend, se mezcla en métodos de módulo especificados como métodos de clase en la clase de destino.

***********************************************************************************************************************************
38.- ¿Qué tipo de variable es @@a?

- variable de clase.
***********************************************************************************************************************************
39.- ¿Cuál es la diferencia entre un método pretected y uno privado?

- el método privado no se puede llamar con un objeto que recibe el mensaje, mientras que el pretected o protegido si se puede.
***********************************************************************************************************************************
40.- ¿En qué consiste el duck typing y como esto aplica a ruby?

- consiste en fijamos menos en el tipo o clase de un objeto y más en sus capacidades, si camina como pato, nada como pato, y hace quak, podemos decir que es un pato, pero si tenemos un string lo tratamos como string pero lo podemos convertir en integer.
***********************************************************************************************************************************
41.- ¿Cómo se utilizan las constantes definidas dentro de un módulo?

- podemos acceder a las constantes dentro de un modulo al igual que si fuera una clase, con :: ejemplo: tendriamos 

    module Http
	AUTHORIZATION ="Token" # constante
    end
Cómo la llamariamos: Http::AUTHORIZATION y asi obtener su valor.
***********************************************************************************************************************************
42.- ¿Qué es una variable de instancia de clase y cómo se diferencia de una variable de instancia?

- tenemos la variable global
- la variable de instancia
- la variable local
- una constante
- variable de clase
***********************************************************************************************************************************
43.- ¿En ruby existe la herencia múltiple?

- NO, ya que cada clase solo puede tener una superclase de la que hereda comportamientos.

***********************************************************************************************************************************
44.- ¿Qué hace super?

- sirve para invocar explicitamente el constructor del padre.
***********************************************************************************************************************************
45.- ¿Para qué sirve el meta programming?

- es código que genera código y sirve para ahorrar tiempo en la ejecución de código.
***********************************************************************************************************************************
46.- ¿Cuál es el rol de UJS?

- reemplaza las funcionalidades de jquery, con javascript, desde la -v 5.1
***********************************************************************************************************************************
47.- Explique brevemente como funciona counter-cache:

- Podemos tener una tabla usuarios y una articulos y voy a necesitar que me entregue cuantos articulos pertenercen a cada usuario, suponiendo que mi registro total es una suma altisima de datos, entonces agrego una nueva columna la cual se llamaría user_count que sera la encargada de almacenar cada articulo por usuario, y nos haria mas sencilla la tarea de la consulta.

***********************************************************************************************************************************
48.- Cuál es la diferencia entre utilizar .group y .group_by?

- creo que no mucha, se agrupan las columnas que deseas consultar, si le pasas mas de una debes separar por comas, 
***********************************************************************************************************************************
49.- Cuál es la diferencia entre .count, .size y .length?

- entre .size y length ninguna, pero con count podemos obtener una cantidad de elementos en función a alguna condición.
***********************************************************************************************************************************
50.- Para qué sirve AREL?

- es un reemplazo para la elaboración manual de consultas sql. pero no reemplaza a active record.
***********************************************************************************************************************************



API Metodos REST:

* new y create(para crear, el new las crea y create las guarda en la db)

* read(acciones de lectura, leer un dato en partcular o muchos datos)

* update(actualizar registros, edit: trae istancias desde la db)

* delete(nos permite ir a buscar un registro y eliminarlo)

* Primero crear los recursos(MVC)

- O podemos usar uno de los generadores de Rails:
los scaffold, nos genera la migración, las vistas, los modelos, los controladores, los test, la ruta, estas rutas se generan a traves de la meta programación(código que genera código), donde resources va a crear todas rutas REST orientado al recurso que nosotros le pasamos al generador.

* 4 acciones divididas en los7 métodos RESTful

- rutas member: ruta que trae un id, o sea te lleva al show.
- rutas collections: no trae un id, por ende te trae todos los registros o sea al index.

Para consumir Api:
- postman
- curl
- w get

Api soap: XML(la respuesta viene en ese formato)
Api rest: JSON(la respuesta viene en ese formato)

* Peticion en la terminal con curl:
$ curl -i -H "Accept: application/json" -H "Content-Type: application/json" -X GET https://pokeapi.co/api/v2/pokemon/ditto


* $ man curl: nos entrega un manual extenso de como usarlo y los flags

* te devuelve en formato json la petición.

* solo necesitamos modelo(va a guardar los datos) y controlador(vaya a buscar esos datos y los entregue a traves de un endpoint) y rutas.

$ rails _5.2.5_ new la_comidita --api -d postgresql
$ code .
$ bundle install
$ rails g model food name price:integer
$ rails db:create db:migrate
* Gemfile
- gem 'faker'
$ bundle
* ORM Active Record: maneja la base de datos, herramienta que se encarga de manipular sql a traves de objetos(transforma estos codigos sql a objetos).

* ejemplo: localhost:3000/foods esto me va a traer todas las comidas.
***********************************************************
  # el endpoint se va a llamar foods, que va a apuntar al controlador: 'foods#index'
   #ruta collection
  get 'foods', to: 'foods#index'
  
   # ruta member
  get 'foods/:id', to: 'foods#show'
 ********************************************************* 

$ curl -i -H "Accept: application/json" -H "Content-Type: application/json" -X GET http://localhost:3000/foods

* Me devuelve un array que tiene adentro un hash que tiene la informacion de mis comidas.

* El endpoint que le estoy dando al usuario va a recibir un id y con ese id, voy a ir a buscar una comida y se la voy a mostrar.

* Ej:

$ curl -i -X GET http://localhost:3000/foods/2

=> Content-Type: application/json; charset=utf-8
ETag: W/"39db0a35a5f14c6fa8e78d52b1d330b2"
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: f9fdb9b2-d516-4c48-9c36-a5544657bcd9
X-Runtime: 1.097393
Transfer-Encoding: chunked

{"id":2,"name":"Poutine","price":13063,"created_at":"2021-06-06T01:34:57.850Z","updated_at":"2021-06-06T01:34:57.850Z"}

*************************************************************
 * Se puede crear más endpoint para buscar por distintos parámetros: ej: precio, nombre(lo ideal que tenga un solo nombre unico), color, id, etc.
 
*************************************************************

where: me entrega un array con coincidencias

*************************************************************

rango de precios:
peticion GET en Postman:
http://localhost:3000/foods/price/6000/12000

peticion DELETE en Postman:
http://localhost:3000/foods/52

peticion GET en curl:
curl -i -X GET http://localhost:3000/foods

peticion POST en curl:
curl --data "name=cazuela&price:6700" http://localhost:3000/foods/add

peticion DELETE en curl:
$ curl -X DELETE http://localhost:3000/foods/53

*******************************************************

'e' nos sirve para capturar el elemento que necesitamos modificar.

e.stopPropagation(): sirve para detener cualquier otro evento 
carrito[producto.id] = {...producto} con los ... estamos haciendo una copia de producto

****************************************************
ctrl+f: sirve para reemplazar la palabra que buscas
****************************************************

Para guardar los productos en el localstorage: tenemos que ver donde los vamos a almacenar;
carrito vendria siendo nuestra coleccion de objetos.


https://developer.mozilla.org/es/docs/Web/API/Element/setAttribute



*********************************************************
VER LAS RUTAS POR RECURSO:
$ rails routes -g products
*********************************************************



*************************************************************
*************************************************************
Diego:kirbyzzz:  18:03
Son dos: una api rest y una app solo de front con vanilla
*************************************************************
Eva Matus  18:03
la del front tiene que consumirla?
*************************************************************
Diego:kirbyzzz:  hace 5 minutos
Claro, el front tiene que consumir la api
*************************************************************
Eva Matus  hace 4 minutos
por intermedio delbuscador? en si la api seria los registro que voy a crear?
Nuevo
*************************************************************
Diego:kirbyzzz:  hace 3 minutos
La api es la app en el back, con todo lo que eso conlleva, o sea, un crud completo
*************************************************************
Diego:kirbyzzz:  hace 2 minutos
Y la app del front va a consumir la api para mostrar los productos, y hacer toda la interactividad para las compras
*************************************************************
Diego:kirbyzzz:  hace 2 minutos
En resumen, son dos apps:la del back y la del front, y ambas se conectan por la api
*************************************************************
Eva Matus  hace 1 minuto
eso me enreda:sadcat:...para que hago dos si con una completa en si, haciendo el back puedo implementar el front
*************************************************************
Diego:kirbyzzz:  hace 2 minutos
Porque eso permite escalar el front y el back mucho más rápido al ser independientes, y además te permite conectar más de un front al mismo back, como por ejemplo una app movil o una app de IoT
*************************************************************
Eva Matus  hace 1 minuto
como en la prueba de clon de twitter o la prueba de la api de nasa?
*************************************************************
Diego:kirbyzzz:  hace < 1 minuto
Si tu modelo de negocio esta enfocado solo a la web, entonces es mas facil hacer todo en un mismo proyecto, pero si tu modelo de negocio es potencialmente escalable en otros dispositivos, siempre es mejor hacer que el back sirva una api y ahi conectar por separado todas las apps de front necesarias

Diego:kirbyzzz:  hace < 1 minuto
Algo asi, en ambos casos serviamos una api de forma opcional para otros dispositivos, pero en el caso de un ecommerce el enfoque desde un principio es dinámico, por ende ya sabes que si o si se usaran por lo menos dos interfaces:una app web y una app movil

Diego:kirbyzzz:  hace < 1 minuto
Por ende, hacer el front y el back por separado agiliza el desarrollo y la escalabilidad

*************************************************************
como hago que la front consuma la api, mediante un enlace de: por ejemplo; puedo subir la del back a heroku y ese link me sirve para anclarlo como api a la del front? me pierdo ahi...

*************************************************************
Diego:kirbyzzz:  hace 1 hora
Claro, subes el back a heroku, y la url de heroku sería tu url base, a esa le agregarias cada path y tendrias los endpoints, entonces, cuando quieras hacer las peticiones desde el front, las harias a esos endpoints







ENTREVISTA TECNICA PARA AYUDANTE:


html -> manejo de etiquetas semanticas:

css -> selectores basicos y avanzados, 
flexbox, 
grid, 
posicionamiento en general


js -> manejo y delegacion de eventos, 
callbacks, 
funciones asincronas y 
promesas



ruby -> manipulacion de los distintos tipos de datos, 
ciclos y condicionales, 
manejo del flujo o traceback (Stack o Queue), 

scope de variables etc



bd -> consultas y subconsultas en el select, 
from y where, 
joins,
constraints, 
secuencias, 
normalizacion








ENTREVISTA TECNICA PARA TRABAJO:


preguntas sobre las herramientas que sabes usar y ejercicios de ahi...HackerRank

Es que por lo general no te preguntan mucho por las herramientas, porque se supone que las sabes usar

a lo mas te peguntan por lo mas rebuscado

ActiveRecord, 
ActionCable, 
ActiveJob, 
Concerns, 
Axios etc

pero no más que eso, donde más hacen énfasis es en los problemas que te dan muchas veces, la entrevista técnica incluye un problema que tienes que resolver, esos ejercicios los sacan por lo general de páginas como HackerRank, y lo que evalúan es qué tan creativo eres para solucionarlo y qué tan eficiente es la solucion a veces incluso les ponen benchmarks a tu código para ver qué tan rápido se ejecuta es que eso es lo que buscan, mas allá de que sepas usar un lenguaje o herramienta, lo que buscan es gente que pueda resolver problemas de la forma más creativa















