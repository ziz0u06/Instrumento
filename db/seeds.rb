# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Booking.destroy_all
Instrument.destroy_all
User.destroy_all


user = User.new(email: "user@test.com", password: "azerty1")
user_1 = User.new(email: "hello@test.com", password: "azerty1")
user_2 = User.new(email: "coucou@test.com", password: "azerty1")
user_3 = User.new(email: "admin@test.com", password: "azerty1")
user_4 = User.new(email: "guitarist@test.com", password: "azerty1")
user_5 = User.new(email: "pianist@test.com", password: "azerty1")

user.save!
user_1.save!
user_2.save!
user_3.save!
user_4.save!
user_5.save!



instrument = Instrument.new(name: "guitare", price: 100.0, start_date: Date.new(2022, 6, 10), end_date: Date.new(2022, 9, 10))
instrument.user = user
instrument.save!

instrument_1 = Instrument.new(name: "violon", price: 90.0, start_date: Date.new(2022, 6, 1), end_date: Date.new(2022, 9, 23))
instrument_1.user = user_1
instrument_1.save!

instrument_2 = Instrument.new(name: "piano", price: 85.0, start_date: Date.new(2022, 6, 10), end_date: Date.new(2022, 9, 10))
instrument_2.user = user_2
instrument_2.save!

booking = Booking.new(start_date: Date.new(2022, 6, 20), end_date: Date.new(2022, 7, 29), status: false)
booking.user = user_1
booking.instrument = instrument
booking.save!

booking_1 = Booking.new(start_date: Date.new(2022, 7, 10), end_date: Date.new(2022, 9, 10), status: false)
booking_1.user = user_2
booking_1.instrument = instrument_1
booking_1.save!
