def nombres(arg1, arg2,arg3)
    puts arg1
    puts arg2
    puts arg3
end

nombres('Ana', 'Camilo', 'Antonia')

#######################################

def nombres(*args)
  puts args
end

nombres('Ana', 'Camilo', 'Antonia')
