# Herencia
# Va a heredar los métodos y 

class Video
  attr_accessor :title, :duration
end


class YouTubeVideo < Video
  attr_accessor :youtube_id
end

yt = YouTubeVideo.new
yt.title = "Herencia en ruby"
puts yt.title

yt.duration = 20
puts yt.duration

yt.youtube_id = "BSGYI4864J"
puts yt.youtube_id
