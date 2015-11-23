# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Airports

Airport.create([{name: "ZAG"},
                       {name: "PRG"},
                       {name: "ORY"},
                       {name: "FRA"},
                       {name: "STR"}])

# Flights

date = Time.now + 1.month
Flight.create(departing_airport: Airport.find(2),
                    arrival_airport: Airport.first,
                    date: date,
                    duration: "2 hours and 30 mins")

Flight.create(departing_airport: Airport.first,
                    arrival_airport: Airport.find(3),
                    date: date,
                    duration: "2 hours")

Flight.create(departing_airport: Airport.first,
                    arrival_airport: Airport.find(4),
                    date: date,
                    duration: "1 hour 30 mins")

Flight.create(departing_airport: Airport.first,
                    arrival_airport: Airport.find(5),
                    date: date,
                    duration: "less than 1 hour")

Flight.create(departing_airport: Airport.first,
                    arrival_airport: Airport.find(6),
                    date: date,
                    duration: "1 hour")

Flight.create(departing_airport: Airport.first,
                    arrival_airport: Airport.find(7),
                    date: date,
                    duration: "1 hour")
