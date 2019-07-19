class Doctor

  attr_accessor :name #:appointment, :patient

      @@all = []

  def initialize(name)
      @name = name
      @@all << self
  end

  def self.all
      @@all
  end

  def new_appointment(patient, date)
      appointment = Appointment.new(patient,self,date)
  end

  def appointments#meals
      Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end

   def patients#waiters
      appointments.map do |appointment|
      appointment.patient
   end
 end
end
