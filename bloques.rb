# def hola
#     yield
# end

#hola { puts "Hola, mi nombre es Ewi!" }

# hola do
#     puts "Hola, mi nombre es Ewi!"
# end


############################# block_given? ##############

# def hola
#     yield if block_given?
# end

# hola { puts "Hola mundo!" }

######### & ###############

# def hola &bloque
#     bloque.call if block_given?
# end

# hola { puts "Hola mundo!" }


##### &bloque ##############

# def hola &bloque
#     yield if block_given?
# end

# hola { puts "Hola mundo!" }


########### &block y &bloque ################

def hola &bloque
    otro_hola(&bloque)
end

def otro_hola &block
    puts "otro bloque"
    block.call
end

hola { puts "Hola mundo!" }



