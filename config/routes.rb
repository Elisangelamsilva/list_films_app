Rails.application.routes.draw do
  root to: 'profiles#index'
  resources :movies do
    get 'search', to: 'movies#search', on: :collection
  end
  resources :profiles
  devise_for :users
end
