=begin
Existe un modo sencillo de generar un número aleatorio o al azar en Ruby, utilizamos el método rand(). Por ejemplo si quisiéramos un número al azar entre el 1 y el 5 utilizaríamos el siguiente código:

rand(5) + 1
Prueba en IRB este código para comprobar que devuelve números aleatorios del 1 al 5. Si te preguntas porque le sumamos 1 es porque el método realmente está devolviendo número del 0 al 4, así que le sumamos 1 para obtener números aleatorios del 1 al 5.

En este ejercicio vamos a crear un módulo llamado “TirarDados”, dentro de este módulo vamos a tener métodos llamados “seis_lados”, “ diez_lados”, y “veinte_lados”.  Estos métodos deben de devolver respectivamente un número aleatorio del 1 al 6, del 1 al 10, y del 1 al 20. Finalmente vamos a llamar a los métodos desde fuera del módulo, e imprimir los resultados en pantalla. 
=end

module TirarDados
  
  def initialize
  end

  def seis_dados
    puts rand(5) +1
  end

  def diez_dados
  
  end

  def veinte_dados
  
  end

end

dados = TirarDados.new
dados.seis_dados