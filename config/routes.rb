Rails.application.routes.draw do
  root to: 'profiles#index'
  devise_for :users
end
