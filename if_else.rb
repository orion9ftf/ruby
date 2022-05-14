puts "¿Te gustan los perros o los gatos?"

respuesta = gets.chomp

if respuesta == "perros" 
    puts "guau guau"
elsif respuesta == "gatos"
    puts "miau miau"
end


#### evaluando con case ####
case respuesta
when "perros" 
    puts "guau guau"
when "gatos"
    puts "miau miau"
end