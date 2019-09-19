class Doctor

    @@all = []
    attr_accessor :name, :patient, :appointment
    
    def initialize(name)
        @name = name
        @@all << self
    end
        
    def self.all
        @@all
    end

    def new_appointment(patient, date)
        appointment = Appointment.new(date, patient, self)
        appointment.doctor = self
        appointment
    end

    def appointments
        Appointment.all.select {|ele| ele.doctor == self}
    end

    def patients
        appointments.map {|ele| ele.patient}
    end

end