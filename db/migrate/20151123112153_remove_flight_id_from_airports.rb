class RemoveFlightIdFromAirports < ActiveRecord::Migration
  def change
    remove_column :airports, :flight_id
  end
end
