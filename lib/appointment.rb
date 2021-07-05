require "pry"

class Appointment
    require_relative "./doctor.rb"
    require_relative "./patient.rb"

    attr_accessor :date, :patient, :doctor

    @@all = []

    def initialize(date = "Monday, August 1st", patient, doctor)
        @date = date
        @patient = patient 
        @doctor = doctor 
        @@all << self 
    end

    def self.all
        @@all
    end
end
