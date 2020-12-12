Rails.application.routes.draw do
  devise_for :users
  resources :genres
  resources :movies
  resources :movie_genres
  delete "/movies/:tmdb_id", to: "movies#destroy"
end
