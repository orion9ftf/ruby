class Video
  @@type = "video/mp4"

  
  def type_objeto
    puts @@type
  end
  
  class << self
    def type_clase # def self.type_clase
      puts @@type # imprimimos la varible de clase en el método de clase
    end
  end
end

Video.type_clase
nuevo_video = Video.new
nuevo_video.type_objeto # video/mp4