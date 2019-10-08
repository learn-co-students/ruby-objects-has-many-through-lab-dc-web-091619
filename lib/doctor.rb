require_relative './patient.rb'
require_relative './appointment.rb'
require 'pry'
class Doctor
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end
    def self.all
        @@all
    end
    def appointments
        Appointment.all.select do |appointment|
            # binding.pry
            appointment.doctor == self
        end
    end
    def new_appointment(patient, date)
        Appointment.new(date, patient, self)
    end
    def patients
        self.appointments.map(&:patient)
    end
end