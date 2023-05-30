class GamesController < ApplicationController

  before_action :set_game, only: %i[show edit update destroy]
  before_action :set_user, only: %i[new create]

  def index
    # @games = Game.all
    @games = policy_scope(Game)
  end

  def show
    authorize @game
  end

  def new
    @game = Game.new
    authorize @game
  end

  def create
    @game = Game.new(game_params)
    @game.user = @user
    authorize @game
    if @game.save
      redirect_to games_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    authorize @game
  end

  def update
    authorize @game
    @game.update(game_params)
    redirect_to game_path(@game)
  end

  def destroy
    authorize @game
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
