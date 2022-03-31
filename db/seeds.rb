# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

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



instrument = Instrument.new(name: "flute", price: 100.0, start_date: Date.new(2022, 6, 10), end_date: Date.new(2022, 9, 10))
instrument.user = user
instrument.save!

instrument_1 = Instrument.new(name: "violon", price: 90.0, start_date: Date.new(2022, 6, 1), end_date: Date.new(2022, 9, 23))
instrument_1.user = user_1
instrument_1.save!

instrument_2 = Instrument.new(name: "piano", price: 85.0, start_date: Date.new(2022, 6, 10), end_date: Date.new(2022, 9, 10))
instrument_2.user = user_2
instrument_2.save!

file = URI.open('https://res.cloudinary.com/dcxr19oc4/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1648679507/a9cyyxx1dbxapfttgbx9.jpg')
instrument_3 = Instrument.new(name: "guitare", price: 85.0, start_date: Date.new(2022, 6, 10), end_date: Date.new(2022, 9, 10))
instrument_3.photo.attach(io: file, filename: 'guitare.jpg', content_type: 'image/jpg')
instrument_3.user = user_3
instrument_3.save!

booking = Booking.new(start_date: Date.new(2022, 6, 20), end_date: Date.new(2022, 7, 29), status: false)
booking.user = user_1
booking.instrument = instrument
booking.save!

booking_1 = Booking.new(start_date: Date.new(2022, 7, 10), end_date: Date.new(2022, 9, 10), status: false)
booking_1.user = user_2
booking_1.instrument = instrument_1
booking_1.save!
