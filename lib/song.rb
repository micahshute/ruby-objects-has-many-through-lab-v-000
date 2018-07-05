class Song

  @@all = []

  def self.all
    @@all
  end

  attr_accessor :name, :genre, :artist

  def initialize(name, artist, genre)
    @name = name
    @@all << self
  end

end
