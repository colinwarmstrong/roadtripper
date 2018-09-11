Rails.application.routes.draw do
  root to: 'welcome#index'
  get '/auth/google_oauth2/callback', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/dashboard', to: 'dashboard#index'
  get '/map', to: 'map#index'
  resources :user, only: [:edit, :update]
  resources :trips, only: [:create]
end
