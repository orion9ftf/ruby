=begin
Ejercicio: La cuenta bancaria
En este ejercicio vamos a simular una cuenta bancaria. Crea una clase llamada Cliente, la clase debe contener una variable de instancia llamada saldo, a ésta variable debe asignársele un valor numérico al momento de instanciar un objeto. La clase además debe contener un método llamado retiro, con un parámetro que indica la cantidad que el cliente desea retirar de la cuenta. Dicho método debe restar cada retiro del saldo del cuenthabiente. Si el saldo no alcanza para el retiro se debe rechazar el retiro con un mensaje de aviso. Siempre que se haga un retiro debe también aparecer un mensaje de cuánto se retiro y cuál es el saldo actual.

Para probar el funcionamiento de la clase crear un objeto y hacer varios retiros de tal modo que el último sobrepase el límite del saldo.

Una vez terminada la clase Cliente, crear una sublcase llamada ClientePremium. Ésta clase debe definirse como una subclase de Cliente. Cada vez que se haga un retiro a través de ClientePremium debe aparecer un mensaje que diga “Recuerde que en cada compra le bonificamos el 5% del total en su cuenta”.

Consejos: Primero termina y prueba la clase Cliente, una vez que todo funcione correctamente comienza la clase ClientePremium. En ésta última debes sobreescribir el método retirar y hacer uso de la palabra reservada “super”.
=end