class DropAirportsFlights < ActiveRecord::Migration
  def change
    drop_table :airports_flights
  end
end
