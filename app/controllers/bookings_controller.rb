class BookingsController < ApplicationController
  def new
    @flight = Flight.find(params[:flight_id])
    @booking = @flight.bookings.build
    params[:passengers].to_i.times {@booking.passengers.build}
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to @booking
    else
      render :new
    end
  end

  def show
    booking = Booking.find(params[:id])
    @flight = booking.flight
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id,
        :passengers_attributes => [:first_name, :last_name])
  end
end
