Rails.application.routes.draw do
  devise_for :users, path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  },
  controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  resources :genres
  resources :movies
  resources :movie_genres
  delete "/movies/:tmdb_id", to: "movies#destroy"
end
