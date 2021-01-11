class Song 
  attr_reader :name
  
  @@all = []
  
  def initialize(name, artist, genre)
    @name = name
    @@all << self
  end
  
end