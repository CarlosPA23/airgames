class GamesController < ApplicationController
  def edit
    @game = Game.find(params[:id])
  end

  def update
    @game = Game.find(params[:id])
    @game.update(game_params)
    # No need for app/views/restaurants/update.html.erb
    redirect_to game_path(@game)
  end
end
