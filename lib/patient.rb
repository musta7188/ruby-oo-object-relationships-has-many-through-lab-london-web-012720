class Patient
    attr_accessor :name

    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def appointments
        Appointment.all.select {|a|a.patient == self}
    end

    def new_appointment(doctor, date)
        Appointment.new(self, doctor, date)
    end

    def self.all
        @@all
    end

end