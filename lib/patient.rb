class Patient
    attr_accessor :name, :doctor, :appt_date
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end    

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select do |appt_info| 
            appt_info.patient == self
        end
    end
    
    def new_appointment(doctor, appt_date)
        new_entry = Appointment.new(appt_date, self, doctor)
    end

    def doctors
        self.appointments.map do |appt|
            appt.doctor
          end
    end
end

# belle = Doctor.new('belle')
# patty = Patient.new('patty')
# doug = Patient.new('doug')
# skeeter = Doctor.new('skeeter')

# patty.new_appointment('January 12th, 2020', belle)
# skeeter.new_appointment('January 14th, 2090', doug)

#
