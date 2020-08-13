Rails.application.routes.draw do
  resources :gigs, only: [:index]
  resources :users, only: [:index, :show] do
  resources :gigs, only: [:create, :update, :delete]
end
  resources :sessions, only: [:create]
  resources :registrations, only: [:create] 
  delete :logout, to: "sessions#logout"
  get :logged_in, to: "sessions#logged_in"
  root to: "static#home" 
end
