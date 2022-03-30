class InstrumentsController < ApplicationController
  def index
    @instruments = Instrument.all
  end

  def show
    @instrument = Instrument.find(params[:id])
  end

  def new
    @instrument = Instrument.new
  end

  def edit
  end

  def create
    result = Instrument.validate_and_create params, current_user
    process_result_from_model result
  end

  def update
    result = Instrument.validate_and_update params, @instrument, current_user
    process_result_from_model result
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

  def process_result_from_model result
    if !result[:error]
      flash_and_redirect result
    else
      flash_and_render_action result
    end
  end
end
