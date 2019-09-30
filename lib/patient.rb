class Patient
    @@all = []

    attr_reader :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def new_appointment(doctor, date)
        Appointment.new(date, self, doctor)
    end

    def appointments
        Appointment.all.select do |appointment|
        appointment.patient == self
        end
    end

    def doctors
        appointments.map do |appointment|
            appointment.doctor
        end
    # iterates over this patient's appointments and collects the doctor that belongs to each appointment.
    end

    def self.all
        @@all
    end

end