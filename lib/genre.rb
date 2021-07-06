class Genre

  @@all = []
  attr_accessor :name
  
  def initialize(name)
      @name = name
      @@all << self
  end

  def self.all
      @@all
  end

  def songs
      Song.all.select {|ele| ele.genre == self}
  end

  def artists
      songs.collect {|ele| ele.artist}
  end

end
