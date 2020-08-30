# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
condition =["covid","toothache","brokenbone","earpain"]
10.times do 
    doctor = Doctor.create(
        name: Faker::Name.name,
        ocupation: condition.sample
    )
    patient = Patient.create(
        name: Faker::TvShows::Seinfeld.character,
        condition: condition.sample
    )
        if doctor.ocupation == patient.condition
            Appointment.create(doctor_id: doctor.id, patient_id: patient.id)
        end
end

puts "seed"