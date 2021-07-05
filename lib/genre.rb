class Genre
    require_relative "./song.rb"
    require_relative "./artist.rb"


    attr_accessor :name

    @@all_genres = []

    def initialize(name)
        @name = name
        @@all_genres << self
    end

    def self.all
        @@all_genres 
    end

    def songs
        Song.all    #need to double check why this works? It returns all songs
    end

    def artists
        Artist.all      #need to double check why this works. It returns all Artists
    end


end

