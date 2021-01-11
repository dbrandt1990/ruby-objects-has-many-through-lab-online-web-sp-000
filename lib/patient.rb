class Patient 
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
    Appointment.all.select {|app| app.patient.name == @name}
  end
  
  def doctors 
    Appointment.all.map do |app|
      if app.patient.name == @name 
        app.doctor 
       end
      end
  end
  
end