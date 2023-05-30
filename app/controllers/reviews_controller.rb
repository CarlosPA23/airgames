class ReviewsController < ApplicationController
  before_action :set_game, only: %i[new create]

  def new
    @review = Review.new
    authorize @review
  end

  def create
    @user = current_user
    @review = Review.new(review_params)
    authorize @review
    @review.user = @user
    @review.game = @game
    if @review.save
      redirect_to game_path(@game)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_game
    @game = Game.find(params[:game_id])
  end

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
