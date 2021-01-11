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
  end
  
  def artists
  end 

end