class Genre

  @@all = []

  def self.all
    @@all
  end

  attr_accessor :name, :artists, :songs

  def initialize(name)
    @artist = []
    @songs = []
    @name = name
  end

end
