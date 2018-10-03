class Artist
    @@allsongs = []
    attr_accessor :name, :songs
    attr_reader :allsongs

    def initialize(name)
        self.name = name 
        self.songs = []
    end 

    def add_song(song)
        self.songs << song unless self.songs.include?(song)
        @@allsongs << song unless @@allsongs.include?(song)
        song.artist = self if song.artist.nil?
    end 

    def add_song_by_name(name)
        song = Song.new(name)
        add_song(song)
    end 

    def self.song_count
        @@allsongs.count
    end 
end 