def saludo(nombres)
  nombres.each {|nombre| puts "hola #{nombre}" }
end

saludo(['ana', 'aldo'])


def saludo(*nombres)
  nombres.each do |nombre|
    puts "hola #{nombre}"
  end
end

saludo('ana', 'camila', 'grace')

