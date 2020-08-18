Rails.application.routes.draw do
  root 'welcome#index'
  resources :gigs
  resources :users, only: [:index, :show, :update] do
    resources :gigs, only: [:create, :update]
  end
  resources :sessions, only: [:create]
  resources :registrations, only: [:create] 
  delete :logout, to: "sessions#logout"
  get :logged_in, to: "sessions#logged_in"
  # root to: "static#home" 
end
