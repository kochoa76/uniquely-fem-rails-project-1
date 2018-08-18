Rails.application.routes.draw do
root 'application#home'
resources :users
resources :companies
get '/auth/facebook/callback' => 'sessions#create'


end
