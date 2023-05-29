class GamesController < ApplicationController
  
  before_action :set_user, only: %i[new create]
  before_action :set_game, only: [:show, :destroy, :edit, :update]

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
      redirect_to user_path(@user)
    else
      render :new, status: :unprocessable_entity
    end
  end
  
  def edit
  end

  def update
    @game.update(game_params)
    redirect_to game_path(@game)
  
  def destroy
    @game.destroy
    redirect_to games_path, status: :see_other
  end

  private
  
  def set_game
    @game = Game.find(params[:id])
  end

  def set_user
    @user = User.find(params[:user_id])
  end

  def game_params
    params.require(:game).permit(:title, :description, :price, :category)
  end
end
