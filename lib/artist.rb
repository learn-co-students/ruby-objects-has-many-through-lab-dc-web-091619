require_relative "./song.rb"
require_relative "./genre.rb"
require "pry"

class Artist
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all    ##shouldnt work because it returns all songs. We only need the artist songs
    end

    def new_song(name, genre)
        Song.new(name, self, genre)     #self in this instance would be the Artist instance
    end

    def genres
        Genre.all   ##same error should work because we only want the genres for the songs belonging to the artist
    end
end
