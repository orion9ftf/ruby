# múltiples objetos responde de diferentes maneras al mismo método

class Video
    def play
    end
end

class Vimeo < Video
    def play
        p "inserta el reproductor de vimeo"
    end
end

class YouTube < Video
    def play
        p "inserta el reproductor de YouTube"
    end
end

videos = [
    YouTube.new,
    Vimeo.new,
    YouTube.new,
    YouTube.new,
    Vimeo.new
]

videos.each do |video|
    video.play
end