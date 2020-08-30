class PatientController < ApplicationController
  before_action :set_patient, only: [:show, :destroy]
  def index
    @patient = Patient.all
  end

  def show
  end

  def new
    @patient = Patient.new 
  end
  def create
    @patient = Patient(patient_param)
    if @petient.save
      redirect_to @patient
    else
      render :new
    end
    def destroy 
      @patient.destroy 
      redirect_to patients_path 
    end
  end
  private 
  def set_patient
    @patient = Patients.find(params[:id])
  end
  def patient_params
    params.requiere(:patient).permit(:name, :condition)
  end
end
