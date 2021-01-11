class Artist 
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
    Song.all.select {|song| song.artist.name == @name}
  end 
  
  def new_song(name, genre)
    Song.new(name, self, genre)
  end
  
  def genres
    Genre.all.select {|genre| genre.artist.name == @name}
  end 
  
end