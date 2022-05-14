File.open('hola.txt', 'r') do |text2|
  while linea = text2.gets
    puts linea
  end
end