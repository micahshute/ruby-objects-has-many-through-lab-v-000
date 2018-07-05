class Song

  @@all = []

  def self.all
    @@all
  end

  attr_accessor :name, :genre, :artist

  def initialize(name, artist, genre)
    @artist = artist
    @name = name
    @genre = genre
    @@all << self
  end

end
