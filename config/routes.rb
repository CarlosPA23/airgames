Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'games/new', to: 'games#new', as: 'new_game'
  post 'games', to: 'games#create'
  # Defines the root path route ("/")
  # root "articles#index"
end
