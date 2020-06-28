class Doctor
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select {|appointment| appointment.doctor}
    end

    def new_appointment(patient, date)
        Appointment.new(date, patient, self)
    end

    def patients
        doctors_appt = self.appointments
        doctors_appt.map {|appt| appt.patient}
    end
end