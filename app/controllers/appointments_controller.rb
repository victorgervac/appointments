class AppointmentsController < ApplicationController
  before_action :set_patient
  def index
    @appointments = @patient.appointment.all
  end

  def new
    @appointment = @patient.appointment.new
    @doctors = Doctor.all
  end

  def create
    @appointment = @patient.appointments.new(appt_params)
    @doctors = Doctor.all
    if @appointment.save
      redirect_to patient_appts_path(@patient)
    else
      render :new 
    end
  end
  def destroy 
    @appointment = @patient.appointments.find(params[:id])
    @appointment.destroy 
    redirect_to patient_
  end 
  private
  def set_patient
    @patient = Patient.find(params[:patient_id])
  end
  def appt_params 
    params.requiere(:appointment).permit(:doctor_id)
  end 

end
