class FlightsController < ApplicationController
  def index
    @airport_options = Airport.all.map {|a| [a.name, a.id]}
    @date_options = Flight.all.map {|f| f.date}.uniq
    @flights = Flight.where(departing_airport: params[:departing_airport_id],
                                          arrival_airport: params[:arrival_airport_id],
                                          date: params[:date]) unless params.nil?
  end
end
