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
    @booking.total_price = (@booking.end_date - @booking.start_date) * @game.price
    @booking.status = "Pending"
    if @booking.save
      redirect_to dashboard_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @booking = Booking.find(params[:id])
    authorize @booking
    @game = @booking.game
  end

  def update
    @booking = Booking.find(params[:id])
    authorize @booking
    if @booking.update(booking_params)
      redirect_to dashboard_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.destroy
    redirect_to dashboard_path
  end

  private

  def set_game
    @game = Game.find(params[:game_id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status)
  end

end
