class Patient#waiter

  attr_accessor :name #,:appointment, :doctor

@@all = []

  def initialize(name)
      @name = name
      @@all << self
  end

  def self.all
    @@all
  end

  def appointments#>>meals
      Appointment.all.select do |appointment|
      appointment.patient
    end
  end

   def doctors#<<customer
      appointments.map do |appointment|
      appointment.doctor == self
   end
 end

 def new_appointment(doctor,date)#<<
     Appointment.new(doctor,date,self)
 end
end
