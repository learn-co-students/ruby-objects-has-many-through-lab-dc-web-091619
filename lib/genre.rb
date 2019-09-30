class Genre
    @@all = []

    attr_reader :name
    attr_accessor :songs, :artists

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select do |song|
            song.genre == self
        end
    # iterates through all songs and finds the songs that belong to this genre instance
    end

    def artists
        songs.map do |song| 
            song.artist
        end
    # iterates over genre's songs and collects the artist of each song
    end

end