class CategoriesController < ApplicationController
  def index
    @games = policy_scope(Game)
    @games = @games.where(category: params[:category].capitalize.split("-")[0])
  end
end
