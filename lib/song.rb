class Song
    #SONG IS THE MIDDLE MAN, ARTIST AND GENRE WILL PASS THROUGH THE SONG
    attr_accessor :name, :artist, :genre
    
    @@all_songs = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist 
        @genre = genre

        @@all_songs << self
    end

    def self.all
        @@all_songs
    end
end
