require "uri"
require "json" #cuando llamamos a JSON.parse ayuda a filtrar la respuesta con ese formato de texto plano.
require "net/http"


def request(address)
  url = URI(address)
  https = Net::HTTP.new(url.host, url.port)
  https.use_ssl = true
  request = Net::HTTP::Get.new(url)
  request["Authorization"] = "Basic bmFtZTpwYXNzd29yZA=="
  request["Content-Type"] = "application/json"
  request.body = JSON.dump({
    "content": "prueba desde postman!",
    "user_id": 1
  })
  
  response = https.request(request)
  # puts response.read_body
  JSON.parse response.read_body
end

body = request("https://jsonplaceholder.typicode.com/posts")

# iterar el arreglo:
body.each do |post|
  puts post['title']
end
