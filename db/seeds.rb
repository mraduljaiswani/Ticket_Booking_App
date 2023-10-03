# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Seat.create(seat_number: "A1", status: "available")
Seat.create(seat_number: "A2", status: "available")
Seat.create(seat_number: "A3", status: "available")

# Add more seats as needed...


Seat.create(seat_number: "B1", status: "booked")
Seat.create(seat_number: "B2", status: "booked")


puts "Seeding complete."