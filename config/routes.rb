Rails.application.routes.draw do
  resources :movies
  delete "/movies/:tmdb_id", to: "movies#destroy"
  # post "/movies/:tmdb_id/watched", to: "movies#watched"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
