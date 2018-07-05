class Genre

  @@all = []

  def self.all
    @@all
  end

  attr_accessor :name, :artists

  def initialize(name)
    @artist = []
    @name = name
  end

end
