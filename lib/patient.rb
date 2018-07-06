class Patient

  @@all = []

  def self.all
    @@all
  end

  attr_accessor :doctor

  def initialize(name)
    @name = name
    @@all.push(self)
  end

  def appointments
    Appointment.all.select{|apt| apt.patient == self}
  end

  def doctor
    Doctor.all.find{|doc| doc.patients.include?(self)}
  end

end
