class GamesController < ApplicationController
  before_action :set_game, only: [:show, :destroy]

  def index
    @games = Game.all
  end

  def show
  end
  
  def destroy
    @game.destroy
    redirect_to games_path, status: :see_other
  end

  private

  def set_game
    @game = Game.find(params[:id])
  end
end
