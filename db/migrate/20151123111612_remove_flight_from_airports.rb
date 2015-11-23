class RemoveFlightFromAirports < ActiveRecord::Migration
  def change
    remove_column :airports, :flight
  end
end
