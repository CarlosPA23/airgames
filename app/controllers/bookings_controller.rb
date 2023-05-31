class BookingsController < ApplicationController
  before_action :set_game, only: %i[new create]

  def index
    @bookings = policy_scope(Booking)
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    authorize @booking
    @booking.user = current_user
    @booking.game = @game
    if @booking.save
      redirect_to game_path(@game)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def update
    @booking = Booking.find(params[:id])
    authorize @booking
    if @booking.update(booking_params)
      redirect_to game_path(@booking.game)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def set_game
    @game = Game.find(params[:game_id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
