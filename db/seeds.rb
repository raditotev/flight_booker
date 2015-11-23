# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Airports

Airport.create([{name: "SOF"},
                       {name: "LGW"},
                       {name: "ZAG"},
                       {name: "PRG"},
                       {name: "ORY"},
                       {name: "FRA"},
                       {name: "STR"}])

# Flights

Flight.create(departing_airport: Airport.find(2),
                    arrival_airport: Airport.first,
                    date: Time.now + 1.day,
                    duration: "2 hours and 30 mins")

Flight.create(departing_airport: Airport.first,
                    arrival_airport: Airport.find(3),
                    date: Time.now + 2.days,
                    duration: "2 hours")

Flight.create(departing_airport: Airport.first,
                    arrival_airport: Airport.find(4),
                    date: Time.now + 3.days,
                    duration: "1 hour 30 mins")

Flight.create(departing_airport: Airport.first,
                    arrival_airport: Airport.find(5),
                    date: Time.now + 4.days,
                    duration: "less than 1 hour")

Flight.create(departing_airport: Airport.first,
                    arrival_airport: Airport.find(6),
                    date: Time.now + 5.days,
                    duration: "1 hour")

Flight.create(departing_airport: Airport.first,
                    arrival_airport: Airport.find(7),
                    date: Time.now + 6.days,
                    duration: "1 hour")
