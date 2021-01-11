class Artist 
  attr_reader :name 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    self.save
  end
  
  def save
    if !@@all.include?(self)
      @@all << self
    end
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