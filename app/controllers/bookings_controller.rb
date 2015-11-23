class BookingsController < ApplicationController
  def new
    @flight = Flight.find(params[:booking][:flight_id])
    @passengers = params[:booking][:passengers]
  end

  def create
    @booking = Booking.new(booking_params)
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id)
  end
end
