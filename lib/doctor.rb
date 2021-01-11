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
  
  def new_appointment(date, patient)
    Appointment(date, patient, self)
  end 
  
end