Rails.application.routes.draw do
  root to: 'welcome#index'
  get '/auth/google_oauth2/callback', to: 'sessions#create'
  get '/dashboard', to: 'dashboard#index'
end
