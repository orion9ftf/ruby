# un_proc = Proc.new do |x|
#   puts x
# end

# un_proc.call(45)



# un_lambda = lambda do |x, y|
#   puts x,y
# end

# un_lambda.call(23,25)



def mi_lambda

  test = lambda { return "return dentro del bloque"}
  test.call
  return "este es el return del método"
end

puts mi_lambda