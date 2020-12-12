Rails.application.routes.draw do
  resources :genres
  resources :movies
  resources :movie_genres
  delete "/movies/:tmdb_id", to: "movies#destroy"
end
