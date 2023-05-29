class GamesController < ApplicationController
  def destroy
    @game.destroy
    redirect_to games_path, status: :see_other
  end
end
