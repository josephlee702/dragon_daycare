class AppointmentsController
  def index
    Appointment.all
  end

  def show(appointment_id)
    Appointment.find(appointment_id)
  end
end