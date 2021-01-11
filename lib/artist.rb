class Artist 
  attr_reader :name 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << save
  end
  
  def self.all 
    @@all
  end
  
  def songs
    Song.all.select {|song| song.
  end 
  
  def new_song(name, genre)
    
  end
  
  def genres 
  end 
  
end