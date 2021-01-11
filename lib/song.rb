class Song 
  attr_reader :name, :artist, :genre
  
  @@all = []
  
  def initialize(name, artist, genre)
    @name = name
    @@all << self
  end
  
end