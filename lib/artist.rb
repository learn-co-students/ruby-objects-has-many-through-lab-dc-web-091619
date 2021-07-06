class Artist

    @@all = []
    attr_accessor :name, :genre, :artist
    
    def initialize(name)
        @name = name
        @@all << self
    end
        
    def self.all
        @@all
    end

    def new_song(name, genre)
        song = Song.new(name, self, genre)
        song.artist = self
        song
    end

    def songs
        Song.all.select {|ele| ele.artist == self}
    end

    def genres
        songs.map {|ele| ele.genre}
    end

end