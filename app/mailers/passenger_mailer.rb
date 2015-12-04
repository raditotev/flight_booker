class PassengerMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def confirmation_email(booking)
    @flight = booking.flight
    @passengers = booking.passengers
    @passengers.each do |passenger|
      mail(to: passenger.email, subject: 'Your Flght Details')
    end
  end
end
