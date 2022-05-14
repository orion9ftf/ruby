# En Ruby solo pueden heredar de una clase padre
class Video
    attr_accessor :title
    attr_accessor :duration
    attr_accessor :description

    def embed_video_code
        "<video></video>"
    end
end

class FacebookVideo < Video
    attr_accessor :facebook_id
end

class YouTubeVideo < Video
    attr_accessor :youtube_id

    def embed_video_code# en vez de heredar el comportamiento de su padre, realiza su propio método y lo aplica.
        # estariamos definiendo su comportamiento propio.
        "<iframe />"
    end
end

puts YouTubeVideo.new().embed_video_code
