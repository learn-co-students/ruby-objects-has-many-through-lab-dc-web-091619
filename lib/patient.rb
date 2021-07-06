require 'pry'

class Patient

    @@all = []
    attr_accessor :name, :doctor, :appointment
    
    def initialize(name)
        @name = name
        @@all << self
    end
  
    def self.all
        @@all
    end
  
    def new_appointment(doctor, date)
        appointment = Appointment.new(date, self, doctor)
        appointment.patient = self
        appointment
    end

    def appointments
        Appointment.all.select {|ele| ele.patient == self}
    end
  
    def doctors
        appointments.collect {|ele| ele.doctor}
    end
  
  end
