class Genre 
  attr_reader :name
  
  @@all = []
  
  def initialize(name)
    @name = name
  end
  
  def self.all
    @@all
  end
  
  def songs
    Song.all.select {|song| song.genre == @name}
  end
  
  def artists
  end 

end