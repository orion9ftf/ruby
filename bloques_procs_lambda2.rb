### bloque 1

# 3.times do
#   puts "pueba"
# end

###### bloque 2

# ['hola', 2, 'tres'].each do |x|
#   puts x
# end

#### bloque 3

# grupo = [34,12,2,6,78,22,24,9]
# grupo.select! do |edad|
#   edad >= 18
# end

# puts grupo


### procs:

mayor_edad = Proc.new do |edad|
  edad >= 18
end

menor_edad = Proc.new do |edad|
  edad < 18
end

grupo = [34,12,2,6,78,22,24,9]
grupo.select!(&mayor_edad)
puts grupo