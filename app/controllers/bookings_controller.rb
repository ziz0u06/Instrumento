class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_paramss)
    @booking.save
    redirect_to booking_path(@booking)
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to booking_path(booking_params)
  end

  def delete
    @booking = Booking.find(params[:id])
    @booking.destroy(booking_params)
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :status)
  end
end
