Rails.application.routes.draw do
  root to: 'profiles#index'
  resources :movies do
    get 'search', to: 'movies#search', on: :collection
    post 'watch', to: 'movies#watch', on: :collection
    post 'watched', to: 'movies#watched', on: :collection
  end
  resources :profiles
  devise_for :users
end
