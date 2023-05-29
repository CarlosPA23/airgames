class GamesController < ApplicationController
  before_action :set_user, only: %i[new create]

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    @game.user = @user
    if @game.save
      redirect_to user_path(@user)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end

  def game_params
    params.require(:game).permit(:title, :description, :price, :category)
  end
end
