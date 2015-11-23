class FlightsController < ApplicationController
  def index
    @airport_options = Airport.all.map {|a| [a.name, a.id]}
    @date_options = Flight.all.map {|f| f.date}
    @flights = Flight.where(departing_airport: params[:flight][:departing_airport_id],
                                          arrival_airport: params[:flight][:arrival_airport_id],
                                          date: params[:flight][:date]) unless params[:flight].nil?
    @passengers = params[:passangers]
  end
end
