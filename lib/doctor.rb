class Doctor
    attr_accessor :name, :patient, :appt_date
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select{|appt_info| appt_info.doctor == self}
    end

    def new_appointment(patient, appt_date)
        new_entry = Appointment.new(appt_date, patient, self)
    end

    def patients
        appointments.map do |info| 
            info.patient
        end
    end
end
