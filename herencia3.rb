class Video
    attr_accessor :title
    attr_accessor :duration
    attr_accessor :description

    def embed_video_code
        "<video></video>"
    end

    def setup(title)
        @title = title
    end
end

class YouTubeVideo < Video
    attr_accessor :youtube_id

    def embed_video_code
        "<iframe />"
    end

    # con super podemos sobreescribot sin perder lo que su padre hacía
    def setup(title)
        super
        puts "Prueba"
    end
end

yt = YouTubeVideo.new
yt.setup("herencias de Ruby")
puts yt.title