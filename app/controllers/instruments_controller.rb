class InstrumentsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @instruments = Instrument.all
  end

  def show
    @instrument = Instrument.find(params[:id])
    @booking = Booking.new
  end

  def new
    @instrument = Instrument.new
  end

  def edit
  end

  def update
    @instrument = Instrument.find(params[:id])
    @instrument.update(instrument_params)
      redirect_to instrument_path(@instrument)
    end

  def destroy
    @Instrument.destroy
    redirect_to(instruments_user_path(current_user.id))
  end

  def reserve
    @reservation = @instrument.reservations.new
  end

  private
  def instrument_from_id
    @instrument = Instrument.find(params[:id])
  end

  def instrument_params
    params.require(:instrument).permit(:start_date, :end_date, :photo)
  end
end
