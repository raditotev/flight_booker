# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Clean up database before seeding again

Airport.delete_all
Flight.delete_all
Booking.delete_all
Passenger.delete_all

# Airports

airport_list = [
  ["Sofia", "SOF"],
  ["London", "LGW"],
  ["Frankfurt", "FRA"],
  ["Stuttgart", "STR"]
]

airport_list.each do |name, code|
  Airport.create(name: name, code: code)
end


# Flights

duration = {
  "SOF-LGW" => "2 hours and 30 minutes", "LGW-SOF" => "2 hours and 30 minutes",
  "SOF-FRA" => "1 hour and 30 minutes", "FRA-SOF" => "1 hour and 30 minutes",
  "SOF-STR" => "1 hour and 30 minutes", "STR-SOF" => "1 hour and 30 minutes",
  "LGW-FRA" => "1 hour", "FRA-LGW" => "1 hour",
  "LGW-STR" => "1 hour", "STR-LGW" => "1 hour",
  "STR-FRA" => "40 minutes", "FRA-STR" => "40 minutes"
}

(Date.new(2016, 04, 01)..Date.new(2016, 04, 04)).each do |date|
  Airport.all.each do |airport1|
    Airport.all.each do |airport2|
      unless airport1 == airport2
        d = duration["#{airport1.code}-#{airport2.code}"]
        Flight.create(departing_airport: airport1,
                            arrival_airport: airport2,
                            date: date,
                            duration: d)
      end
    end
  end
end

# Flight.create(departing_airport: Airport.find(2),
#                     arrival_airport: Airport.first,
#                     date: Time.now + 1.day,
#                     duration: "2 hours and 30 mins")

# Flight.create(departing_airport: Airport.first,
#                     arrival_airport: Airport.find(3),
#                     date: Time.now + 2.days,
#                     duration: "2 hours")

# Flight.create(departing_airport: Airport.first,
#                     arrival_airport: Airport.find(4),
#                     date: Time.now + 3.days,
#                     duration: "1 hour 30 mins")

# Flight.create(departing_airport: Airport.first,
#                     arrival_airport: Airport.find(5),
#                     date: Time.now + 4.days,
#                     duration: "less than 1 hour")

# Flight.create(departing_airport: Airport.first,
#                     arrival_airport: Airport.find(6),
#                     date: Time.now + 5.days,
#                     duration: "1 hour")

# Flight.create(departing_airport: Airport.first,
#                     arrival_airport: Airport.find(7),
#                     date: Time.now + 6.days,
#                     duration: "1 hour")
