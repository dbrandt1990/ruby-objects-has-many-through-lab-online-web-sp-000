class Doctor
  attr_reader :name 
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def appointments 
    Appointment.all.select {|app| app.doctor.name == @name }
  end
end