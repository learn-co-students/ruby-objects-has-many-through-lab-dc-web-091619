require "pry"
require_relative "./doctor.rb"
require_relative "./appointment.rb"

class Patient
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name 
        @@all << self 
    end

    def self.all
        @@all
    end

    def new_appointment(doctor, date)
        Appointment.new(date, self, doctor)
    end

    def appointments
        #that iterates through the Appointments array and 
        #returns Appointments that belong to the patient.
        Appointment.all.select do | appts |
            appts.patient == self
        end
    end

    def doctors 
        #that iterates over that patient's Appointments 
        #and collects the doctor that belongs to each Appointment
        patients_doctors = []

        appointments.map do | appts |
            patients_doctors << appts.doctor
        end

        patients_doctors
    end

end
