require_relative 'appointment'
require_relative 'patient'
class Doctor

  @@all = []

  def self.all
    @@all
  end

  attr_accessor :name, :appointments

  def initialize(name)
    @name = name
    @appointments = []
    @@all << self
  end

  def new_appointment(patient, time)
    apt = Appointment.new(self, patient, time)
    
  end

end
