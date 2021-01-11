class Genre 
  attr_reader :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def songs
    Song.all.select {|song| song.genre.name == @name}
  end
  
  def artists
    Song.all.map {|song| song.genre.name == @name song.artist}
  end 

end