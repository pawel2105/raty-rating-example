Rails.application.routes.draw do
  resources :ratings, only: :update
  resources :comments, only: [:index, :show]
  root to: 'comments#index'
end