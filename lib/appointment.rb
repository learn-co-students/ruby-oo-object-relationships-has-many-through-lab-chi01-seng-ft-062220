require 'pry'
class Appointment
    attr_accessor :appt_date, :patient, :doctor
    @@all = []

    def initialize(appt_date, patient, doctor)
        @appt_date = appt_date
        @patient = patient
        @doctor = doctor
        @@all << self
    end

    def self.all 
        @@all
    end
end

# binding.pry