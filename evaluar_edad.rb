edad = gets.chomp.to_i

# if edad < 18
#     puts "No eres mayor de edad :("
# else edad >= 18
#     puts "Eres mayor de edad :) "
# end

if !(edad >= 18) # o decir unless en vez de !
    puts "No eres mayor de edad"
end