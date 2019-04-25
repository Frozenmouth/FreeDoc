# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
10.times do 
	cityname = City.create!(cityname: Faker::Nation.capital_city)
end
10.times do 
	user = Doctor.create!(first_name: Faker::Name.name, last_name: Faker::Hipster.words, speciality: Faker::Job.title, postal_code: Faker::Number.number(5), city_id: Faker::Number.between(City.first.id, City.last.id))
end
10.times do 
	patient = Patient.create!(first_name: Faker::Name.name, last_name: Faker::Hipster.words, city_id: Faker::Number.between(City.first.id, City.last.id))
end
10.times do
  appointment = Appointment.create!(date: Faker::Time.between(DateTime.now, DateTime.now + 1), patient_id: Faker::Number.between(Patient.first.id, Patient.last.id), doctor_id: Faker::Number.between(Doctor.first.id, Doctor.last.id))
end
4.times do
	Speciality.create!(title: Faker::Military.navy_rank, description: Faker::TvShows::Simpsons.quote, doctor_id: rand(1..10))
end
