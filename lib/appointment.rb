class Appointment
  attr_reader :patient, :doctor
  
  @@all = []
  
  def initialize(patient, doctor)
    @patient = patient
    @doctor = doctor
    @@all << self
  end
  
end 
