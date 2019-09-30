require_relative "./artist.rb"
require_relative "./song.rb"
require_relative "./genre.rb"
require "pry"


# ARTIST TEST (name)
cher = Artist.new("Cher")
adele = Artist.new("Adele")
prince = Artist.new("Prince")
herbie = Artist.new("Herbie")



# SONG TEST (name, artist, genre)
believe = Song.new("Believe", cher, "pop")
hello = Song.new("Hello", adele, "pop")
purple_rain = Song.new("Purple Rain", prince, "pop")
take_5 = Song.new("Take 5", herbie, "jazz")


# GENRE TEST (name)
pop = Genre.new("Pop")
jazz = Genre.new("Jazz")



binding.pry
0