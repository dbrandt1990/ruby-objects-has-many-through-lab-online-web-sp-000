class Song 
  attr_reader :name
  
  @@all = []
  
  def initialize(name, artist, genre)
    @name = name
    save.self
  end
  
   def save
    if !@@all.include?(self)
      @@all << self
    end
  end
  
end