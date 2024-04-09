class BookingsController < ApplicationController
  before_action :authenticate_user!

  def new
    @car = Car.find(params[:car_id])
    @booking = @car.bookings.build
  end

  def create
    @car = Car.find(params[:car_id])
    @booking = @car.bookings.build(booking_params)
    @booking.user = current_user

    if @booking.save
      redirect_to @car, notice: 'Votre réservation a été créée avec succès.'
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:starts_at, :ends_at)
  end
end
