autos = {
    'corvette'=> 'chevrolet',
    'march' => 'nissan',
    'fiesta' => 'ford'
}

puts autos['fiesta']

autos2 = {
    corvette: 'chevrolet',
    march: 'nissan',
    fiesta: 'ford'
}

################ clase time #############
t = Time.now
puts t

puts t.strftime("Son las %H:%M %Z")

puts t.strftime("Hoy es %d/%m/%Y")

puts t.strftime("%A")

puts t.strftime("%B")
