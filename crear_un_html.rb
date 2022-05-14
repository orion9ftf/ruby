# html = '<html>
#             <head>
#             <body>
#                 <h1>Creado desde File.write con ruby</h1>
#                 <p>desde el método File</p>
#             </body>
#         </html>'

# File.write('./index.html', html)

html = '<html>
            <head>
            <body>
                <h1 style="text-align: center; color: red;">Creado desde File.write con ruby</h1>
                <p>desde el método File</p>
                
                <ul>'
10.times do |i|
    html += "<li>item número #{i}</li>"
end

foot =      '</ul>
            </body>
        </html>'
index = html + foot

File.write('./index.html', index)