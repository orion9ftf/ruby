nota = [0, 4, 6, 7, 10, 8, 9]

# nota.each do |i|
#   puts "La nota es: #{i}"
# end

# puts "mi nota es: #{nota}"


nota.each do |i|
  if i < 10 
    puts "La nota es: #{i} y estás reprobado"
  else 
    puts "la nota es: #{i} y estás aprobado"
  end
end