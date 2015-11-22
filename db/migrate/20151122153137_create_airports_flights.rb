class CreateAirportsFlights < ActiveRecord::Migration
  def change
    create_table :airports_flights do |t|
      t.integer :from_airport
      t.integer :to_airport
      t.references :flight, index: true, foreign_key: true
    end
  end
end
