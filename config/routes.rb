Rails.application.routes.draw do
root 'application#home'
resources :users
resources :companies
get '/auth/facebook/callback' => 'sessions#create'
get '/signin' => "sessions#new"
post '/signin' => "sessions#create"
get '/signout' => "sessions#destroy"
post '/signout'=> "sessions#destroy"

end
