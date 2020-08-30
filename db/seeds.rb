# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

5.times do 
    doctor = Doctor.create(
        name: Faker::Name.name,
        ocupation: Faker::TvShows::DrWho.the_doctor
    )
end
5.times do 
    patient = Patient.create(
        name: Faker::TvShows::Seinfeld.character,
        condition: Faker::ProgrammingLanguage.name

        )

end

