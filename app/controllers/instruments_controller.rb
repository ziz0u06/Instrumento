class InstrumentsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @instruments = Instrument.all
  end

  def show
    @instrument = Instrument.find(params[:id])
    @user = User.find(@instrument.user_id)
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

  def create
    @instrument = Instrument.new(instrument_params)
    @instrument.user = current_user
    if @instrument.save!
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  private
  def instrument_from_id
    @instrument = Instrument.find(params[:id])
  end

  def instrument_params
    params.require(:instrument).permit(:name, :price, :start_date, :end_date, :photo)
  end
end
