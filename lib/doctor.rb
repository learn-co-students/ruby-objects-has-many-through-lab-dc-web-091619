require "pry"

class Doctor
    require_relative "./patient.rb"
    require_relative "./appointment.rb"
    
    attr_accessor :name

    @@all = []
    
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all 
    end

    def new_appointment(patient, date)
        #takes argument of patient and date, and creates new appointment
        Appointment.new(date, patient, self)
    end

    def appointments 
        #that iterates through all Appointments and finds those belonging to this doctor.
        Appointment.all.select do | appt |
            appt.doctor == self
        end
    end

    def patients 
        #that iterates over that doctor's Appointments and collects the patient that belongs to each Appointments
        doctor_patients = []

        appointments.each do | appt |
            doctor_patients << appt.patient
        end

        doctor_patients
    end

end
