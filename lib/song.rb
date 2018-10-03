class Song

    attr_accessor :name
    attr_reader :artist
    @@all = []

    def initialize(name)
        self.name = name
        @@all << self
    end 

    def artist=(artist)
        @artist = artist if @artist.nil?
    end

    def self.all
        @@all
    end

    def artist_name
        self.artist.name if self.artist
    end 
end 