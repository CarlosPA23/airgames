class GamesController < ApplicationController

  before_action :set_user, only: %i[new create]
  before_action :set_game, only: %i[show edit update destroy]

  def index
    @games = Game.all
  end

  def show
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    @game.user = @user
    if @game.save
      redirect_to games_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @game.update(game_params)
    redirect_to game_path(@game)
  end

  def destroy
    @game.destroy
    redirect_to games_path, status: :see_other
  end

  private

  def set_game
    @game = Game.find(params[:id])
  end

  def set_user
    @user = current_user
  end

  def game_params
    params.require(:game).permit(:title, :description, :price, :category)
  end
end
