class Artist

    @@all = []

    attr_reader :name
    attr_accessor :songs, :genres

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_song(name, genre)
        Song.new(name, self, genre)
    end
    # creates a new song for this artist instance

    def songs
        Song.all.select do |song| 
        song.artist == self
        end
    # iterates through all songs and finds the songs belonging to this artist instance
    end

    def genres
        songs.map do |song|
        song.genre
        end
    # iterates over this artist instance's songs and collects the genre of each song
    end
end