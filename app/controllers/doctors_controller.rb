class DoctorsController < ApplicationController
  before_action :set_doctor, only: [:show, :destroy]

  def index
      @doctors = Doctor.all
      @patients =Patient.all
      @appointmetns =Appointment.all
  end

  def show
  end

  def new
    @doctors = Doctor.new
  end
  def create 
    @doctor = Doctor.new(doctor_params)
    if @doctor.save 
      redirect_to @doctor 
    else 
      render :new
    end
  end

  def edit
  end
  def destroy 
    @doctor.destroy
    redirect_to doctors_path
  end

  private

  def set_doctor
    @doctor = Doctor.find(params[:id])
  end
  
  def doctor_params
    params.requiere(:doctor).permit(:name, :ocupation)
end
end
