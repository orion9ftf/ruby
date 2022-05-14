ZERO = 0
impares = [1,2,3,4,5,6,7,8,9].select do |num| 
  num % 2 != ZERO
end

#puts impares # 1 3 5 7 9

# es lo mismo que:
impares = [1,2,3,4,5,6,7,8,9].select { |num| num % 2 != ZERO } 
puts impares
