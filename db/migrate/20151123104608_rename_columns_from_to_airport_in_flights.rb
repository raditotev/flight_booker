class RenameColumnsFromToAirportInFlights < ActiveRecord::Migration
  def change
    rename_column :flights, :from_airport, :departing_airport_id
    rename_column :flights, :to_airport, :arrival_airport_id
  end
end
