require_relative "song"

class Artist

  @@all = []

  def self.all
    @@all
  end

  attr_accessor :name, :genres

  def initialize(name)
    @name = name
    @genres = []
    @@all << self
  end

  def new_song(name, genre)
    song = Song.new(name)
    song.genre << genre
    song.artist = self
    genre.artists << self
    genre.songs << song
    song
  end

  def songs
    Song.all.select{|song| song.artist == self }
  end

  def genres
    Genre.all.select{|genre| genre.artist == self}
  end

end
