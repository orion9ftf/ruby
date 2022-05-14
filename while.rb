# while expresion(siempre evalúa verdadero o falso)
#     instruccion(lo que va a ejecutar)
# end

playlist = ["sonora", "la muchachita", "calamarino"]
playing = true
index_song = 0

# si hay canciones en la lista de reproduccion y se está reproduciendo (playing es verdadero) entonces debe ejecutar las anciones

while (index_song < playlist.length) && playing
    puts "Reproduciendo #{playlist[index_song]}"

    index_song += 1
    
    # si nos manda 0, damos stop sino se reproduce
    print "Para detener la cancion pon 0: "
    respuesta = gets().chomp.to_i

    if respuesta == 0
        playing = false
        puts " Se detuvo la canción"
    end
end